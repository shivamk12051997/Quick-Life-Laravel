<?php

namespace App\Http\Controllers\Admin;

use App\Models\User;
use Illuminate\Support\Str;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Schema;
use Illuminate\Support\Facades\Validator;

class WarehouseController extends Controller
{
    public function index()
    {
        return view('admin.warehouse.index');
    }

    public function datatable(Request $request)
    {
        $numbers = 50;
        if($request->value){
            $numbers = $request->value;
        }
        $warehouse = User::where('role_as', 'Warehouse');
        if($request->search){
            $allColumnNames = Schema::getColumnListing((new User)->getTable());
            $columnNames = array_filter($allColumnNames, fn($columnName) => !in_array($columnName, ['created_at', 'updated_at', 'id']));
            $warehouse = $warehouse->where(function ($query) use($columnNames, $request) {
                foreach ($columnNames as $index => $column) {
                    $method = $index === 0 ? 'where' : 'orWhere';
                    $query->$method($column, 'LIKE', "%{$request->search}%");
                }
            });
        }


        $warehouse = $warehouse->orderBy('id','desc')->paginate($numbers);

        return view('admin.warehouse.datatable', compact('warehouse'));
    }

    public function store(Request $request)
    {
        // Step 1: Validate inputs
        $validator = Validator::make($request->all(), [
            'email' => 'required|string|max:255|unique:users,email,' . $request->id,
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

            if($request->password){
                $input['password'] = Hash::make($request->password);
                $input['show_password'] = $request->password;
                $input['email_verified_at'] = now();
            }else{
                unset($input['password']);
            }

            $item = User::updateOrCreate(['id' => $input['id']],$input);
            $item->role_as = 'Warehouse';
            if($request->password){
                $item->password = Hash::make($request->password);
                $item->show_password = $request->password;
                $item->email_verified_at = now();
            }
            $item->save();

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
                'html' => view('admin.warehouse.datatable_tr', compact('item'))->render(),
                'message' => 'User Saved Successfully'
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
        $warehouse = User::find($request->id);
        return view('admin.warehouse.ajax_edit', compact('warehouse'));
    }

    public function delete($id)
    {
        $warehouse = User::find($id)->delete();

        return ['message' => ' User Deleted Successfully'];
    }

    public function status($id)
    {
        $warehouse = User::find($id);
        if($warehouse->status == 1){
            $warehouse->status = 0;
        }else{
            $warehouse->status = 1;
        }
        $warehouse->save();

        return $warehouse->status;
    }
}
