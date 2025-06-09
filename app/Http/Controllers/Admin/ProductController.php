<?php

namespace App\Http\Controllers\Admin;

use App\Models\Brand;
use App\Models\Product;
use App\Models\Category;
use App\Models\SubCategory;
use Illuminate\Support\Str;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Schema;
use Illuminate\Support\Facades\Validator;

class ProductController extends Controller
{
     public function index()
    {
        return view('admin.product.index');
    }

    public function datatable(Request $request)
    {
        $numbers = 50;
        if($request->value){
            $numbers = $request->value;
        }
        $product = Product::where('deleted_at', null);
        if($request->search){
            $allColumnNames = Schema::getColumnListing((new Product)->getTable());
            $columnNames = array_filter($allColumnNames, fn($columnName) => !in_array($columnName, ['created_at', 'updated_at', 'id']));
            $product = $product->where(function ($query) use($columnNames, $request) {
                foreach ($columnNames as $index => $column) {
                    $method = $index === 0 ? 'where' : 'orWhere';
                    $query->$method($column, 'LIKE', "%{$request->search}%");
                }
            });
        }

        if($request->brand_filter){
            $product = $product->where('brand_id', $request->brand_filter);
        }
        if($request->category_filter){
            $product = $product->where('category_id', $request->category_filter);
        }
        if($request->sub_category_filter){
            $product = $product->where('sub_category_id', $request->sub_category_filter);
        }

        $product = $product->orderBy('id','desc')->paginate($numbers);

        return view('admin.product.datatable', compact('product'));
    }

    public function store(Request $request)
    {
        // Step 1: Validate inputs
        $validator = Validator::make($request->all(), [
            'name' => 'required|string|max:255|unique:products,name,' . $request->id,
            'main_img' => 'nullable|image|mimes:png,webp|max:2048',
        ]);

        // Step 2: If validation fails, return 422 JSON response
        if ($validator->fails()) {
            return response()->json([
                'message' => 'Validation Error',
                'errors' => $validator->errors()
            ], 422);
        }

        try {
            // Step 3: Save or update your data
            $input = $request->all();

            $input['created_by_id'] = Auth::user()->id;
            $input['status'] = $request->status ?? 0;
            $input['slug'] = Str::slug($request->name, '-');

            $item = Product::updateOrCreate(['id' => $input['id']],$input);
            $item->code = 'P-' . str_pad($item->id, 3, '0', STR_PAD_LEFT);
            $item->save();

            if($request->hasFile('main_img')) {
                // Delete old main image if exists
                if ($item->getFirstMedia('main_img')) {
                    $item->getFirstMedia('main_img')->delete();
                }
                $item->addMedia($request->file('main_img'))->toMediaCollection('main_img');
                // Reload the item to get the latest media
            }
            // Handle multiple gallery images
            if ($request->hasFile('gallery_imgs')) {
                $galleryImgs = $request->file('gallery_imgs');
                if (is_array($galleryImgs)) {
                    foreach ($galleryImgs as $galleryImg) {
                        $item->addMedia($galleryImg)->toMediaCollection('gallery_imgs');
                    }
                } else {
                    $item->addMedia($galleryImgs)->toMediaCollection('gallery_imgs');
                }
            }
            
            return response()->json([
                'id' => $item->id,
                'html' => view('admin.product.datatable_tr', compact('item'))->render(),
                'message' => 'Product Saved Successfully',
            ], 200);

        } catch (\Exception $e) {
            // Step 5: Handle unexpected errors
            return response()->json([
                'message' => 'Something went wrong!',
                'error' => $e->getMessage()
            ], 500);
        }
    }

    public function edit(Request $request)
    {
        $product = Product::find($request->id);
        $brands = Brand::where('status', 1)->get();
        $categories = Category::where('status', 1)->get();
        $sub_categories = SubCategory::where('category_id', ($product->category_id ?? 0))->where('status', 1)->get();
        return view('admin.product.ajax_edit', compact('product', 'brands', 'categories', 'sub_categories'));
    }

    public function delete($id)
    {
        $product = Product::find($id)->delete();

        return ['message' => ' Product Deleted Successfully'];
    }

    public function status($id)
    {
        $product = Product::find($id);
        if($product->status == 1){
            $product->status = 0;
        }else{
            $product->status = 1;
        }
        $product->save();

        return $product->status;
    }
}
