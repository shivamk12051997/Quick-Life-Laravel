<?php

namespace App\Http\Controllers\Admin;

use App\Models\Brand;
use Illuminate\Support\Str;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Schema;
use Illuminate\Support\Facades\Validator;
use Intervention\Image\Laravel\Facades\Image;

class BrandController extends Controller
{
    public function index()
    {
        return view('admin.brand.index');
    }

    public function datatable(Request $request)
    {
        $numbers = 50;
        if($request->value){
            $numbers = $request->value;
        }
        $brand = Brand::where('deleted_at', null);
        if($request->search){
            $allColumnNames = Schema::getColumnListing((new Brand)->getTable());
            $columnNames = array_filter($allColumnNames, fn($columnName) => !in_array($columnName, ['created_at', 'updated_at', 'id']));
            $brand = $brand->where(function ($query) use($columnNames, $request) {
                foreach ($columnNames as $index => $column) {
                    $method = $index === 0 ? 'where' : 'orWhere';
                    $query->$method($column, 'LIKE', "%{$request->search}%");
                }
            });
        }


        $brand = $brand->orderBy('id','desc')->paginate($numbers);

        return view('admin.brand.datatable', compact('brand'));
    }

    public function store(Request $request)
    {
        // Step 1: Validate inputs
        $validator = Validator::make($request->all(), [
            'name' => 'required|string|max:255|unique:brands,name,' . $request->id,
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
            
            // Handle main_img as a simple path
            if ($request->hasFile('img')) {
                $file = $request->file('img');
                $fileName = time() . '_' . $file->getClientOriginalName();

                $filePath = 'uploads/brands/' . $fileName;
                $thumbPath = 'uploads/brands/thumbs/' . $fileName;

                // Save original image
                $file->move(public_path('uploads/brands'), $fileName);

                // Create and save thumbnail without stretching
                $thumbnail = Image::read(public_path('uploads/brands/' . $fileName))
                    ->fit(150, 150, function ($constraint) {
                        $constraint->upsize();
                    });

                $thumbnail->save(public_path('uploads/brands/thumbs/' . $fileName));

                $input['img'] = $filePath;
                $input['thumb'] = $thumbPath;

                // Delete old image if exists
                if (file_exists(public_path($request->old_img ?? '#'))) {
                    unlink(public_path($request->old_img));
                }
            }

            $item = Brand::updateOrCreate(['id' => $input['id']], $input);

            // Step 4: Return success response with 200
            return response()->json([
                'id' => $item->id,
                'html' => view('admin.brand.datatable_tr', compact('item'))->render(),
                'message' => 'Brand Saved Successfully'
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
        $brand = Brand::find($request->id);
        return view('admin.brand.ajax_edit', compact('brand'));
    }

    public function delete($id)
    {
        $brand = Brand::find($id)->delete();

        return ['message' => ' Brand Deleted Successfully'];
    }

    public function status($id)
    {
        $brand = Brand::find($id);
        if($brand->status == 1){
            $brand->status = 0;
        }else{
            $brand->status = 1;
        }
        $brand->save();

        return $brand->status;
    }
}
