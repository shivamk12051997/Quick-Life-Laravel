<?php

namespace App\Http\Controllers\Admin;

use App\Models\Category;
use App\Models\SubCategory;
use Illuminate\Support\Str;
use Illuminate\Http\Request;
use App\Models\ChildCategory;
use Illuminate\Validation\Rule;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Schema;
use Illuminate\Support\Facades\Validator;

class ChildCategoryController extends Controller
{
    public function index()
    {
        $categories = Category::where('deleted_at', null)->get();
        $sub_categories = SubCategory::where('deleted_at', null)->get();
        return view('admin.child_category.index', compact('categories', 'sub_categories'));
    }

    public function datatable(Request $request)
    {
        $numbers = 50;
        if($request->value){
            $numbers = $request->value;
        }
        $child_category = ChildCategory::where('deleted_at', null);
        if($request->search){
            $allColumnNames = Schema::getColumnListing((new ChildCategory)->getTable());
            $columnNames = array_filter($allColumnNames, fn($columnName) => !in_array($columnName, ['created_at', 'updated_at', 'id']));
            $child_category = $child_category->where(function ($query) use($columnNames, $request) {
                foreach ($columnNames as $index => $column) {
                    $method = $index === 0 ? 'where' : 'orWhere';
                    $query->$method($column, 'LIKE', "%{$request->search}%");
                }
            });
        }


        $child_category = $child_category->orderBy('id','desc')->paginate($numbers);

        return view('admin.child_category.datatable', compact('child_category'));
    }

    public function store(Request $request)
    {
        // Step 1: Validate inputs
        $validator = Validator::make($request->all(), [
            'name' => 'required|string|max:255|'. Rule::unique('child_categories', 'name')->ignore($request->id)->whereNull('deleted_at'),
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
            $input['is_featured'] = $request->is_featured ?? 0;
            $input['slug'] = Str::slug($request->name, '-');

            $item = ChildCategory::updateOrCreate(['id' => $input['id']],$input);

            if($request->hasFile('main_img')) {
                // Delete old main image if exists
                if ($item->getFirstMedia('main_img')) {
                    $item->getFirstMedia('main_img')->delete();
                }
                $item->addMedia($request->file('main_img'))->toMediaCollection('main_img');
                // Reload the item to get the latest media
            }

            // Step 4: Return success response with 200
            return response()->json([
                'id' => $item->id,
                'html' => view('admin.child_category.datatable_tr', compact('item'))->render(),
                'message' => 'Sub Category Saved Successfully'
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
        $child_category = ChildCategory::find($request->id);
        $categories = Category::where('deleted_at', null)->get();
        $sub_categories = SubCategory::where('deleted_at', null)->get();
        return view('admin.child_category.ajax_edit', compact('child_category', 'categories', 'sub_categories'));
    }

    public function delete($id)
    {
        $child_category = ChildCategory::find($id)->delete();

        return ['message' => ' ChildCategory Deleted Successfully'];
    }

    public function status($id)
    {
        $child_category = ChildCategory::find($id);
        if($child_category->status == 1){
            $child_category->status = 0;
        }else{
            $child_category->status = 1;
        }
        $child_category->save();

        return $child_category->status;
    }
}
