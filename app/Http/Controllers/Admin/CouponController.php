<?php

namespace App\Http\Controllers\Admin;

use App\Models\Coupon;
use Illuminate\Support\Str;
use Illuminate\Http\Request;
use Illuminate\Validation\Rule;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Schema;
use Illuminate\Support\Facades\Validator;

class CouponController extends Controller
{
    public function index()
    {
        return view('admin.coupon.index');
    }

    public function datatable(Request $request)
    {
        $numbers = 50;
        if($request->value){
            $numbers = $request->value;
        }
        $coupon = Coupon::where('deleted_at', null);
        if($request->search){
            $allColumnNames = Schema::getColumnListing((new Coupon)->getTable());
            $columnNames = array_filter($allColumnNames, fn($columnName) => !in_array($columnName, ['created_at', 'updated_at', 'id']));
            $coupon = $coupon->where(function ($query) use($columnNames, $request) {
                foreach ($columnNames as $index => $column) {
                    $method = $index === 0 ? 'where' : 'orWhere';
                    $query->$method($column, 'LIKE', "%{$request->search}%");
                }
            });
        }


        $coupon = $coupon->orderBy('id','desc')->paginate($numbers);

        return view('admin.coupon.datatable', compact('coupon'));
    }

    public function store(Request $request)
    {
        // Step 1: Validate inputs
        $validator = Validator::make($request->all(), [
            'coupon_code' => 'required|string|max:255|' . Rule::unique('coupons', 'coupon_code')->ignore($request->id)->whereNull('deleted_at'),
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
            
            $item = Coupon::updateOrCreate(['id' => $input['id']], $input);

            // Step 4: Return success response with 200
            return response()->json([
                'id' => $item->id,
                'html' => view('admin.coupon.datatable_tr', compact('item'))->render(),
                'message' => 'Coupon Saved Successfully'
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
        $coupon = Coupon::find($request->id);
        return view('admin.coupon.ajax_edit', compact('coupon'));
    }

    public function delete($id)
    {
        $coupon = Coupon::find($id)->delete();

        return ['message' => ' Coupon Deleted Successfully'];
    }

    public function status($id)
    {
        $coupon = Coupon::find($id);
        if($coupon->status == 1){
            $coupon->status = 0;
        }else{
            $coupon->status = 1;
        }
        $coupon->save();

        return $coupon->status;
    }
}
