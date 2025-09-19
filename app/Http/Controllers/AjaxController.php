<?php

namespace App\Http\Controllers;

use App\Models\SubCategory;
use Illuminate\Http\Request;
use App\Models\ChildCategory;
use App\Http\Controllers\Controller;

class AjaxController extends Controller
{
    public function get_sub_category(Request $request)
    {
        $sub_categories = SubCategory::where('category_id', $request->category_id)->get();
        return view('ajax.get_sub_category', compact('sub_categories'));
    }
    public function get_child_category(Request $request)
    {
        $child_categories = ChildCategory::where('sub_category_id', $request->sub_category_id)->get();
        return view('ajax.get_child_category', compact('child_categories'));
    }



   
}
