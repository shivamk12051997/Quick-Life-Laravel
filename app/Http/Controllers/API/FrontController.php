<?php

namespace App\Http\Controllers\API;

use App\Models\Brand;
use App\Models\Product;
use App\Models\Category;
use App\Models\SubCategory;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class FrontController extends Controller
{
    function home(Request $request)
    {
        
        return response()->json([
            'message' => 'Welcome to the API Home',
            'data' => []
        ]);
    }

    function products(Request $request)
    {
        $products = Product::where('status', 1)->with(['category', 'sub_category', 'brand'])->orderBy('created_at', 'desc');

        if ($request->has('category')) {
            $products = $products->where('category_id', $request->input('category'));
        }
        if ($request->has('sub_category')) {
            $products = $products->where('sub_category_id', $request->input('sub_category'));
        }
        if ($request->has('brand')) {
            $products = $products->where('brand_id', $request->input('brand'));
        }
        if ($request->has('search')) {
            $search = $request->input('search');
            $products = $products->filter(function ($product) use ($search) {
                return str_contains(strtolower($product->name), strtolower($search));
            });
        }
        if ($request->has('sort')) {
            $sort = $request->input('sort');
            if ($sort === 'price_asc') {
                $products = $products->sortBy('price');
            } elseif ($sort === 'price_desc') {
                $products = $products->sortByDesc('price');
            } elseif ($sort === 'newest') {
                $products = $products->sortByDesc('created_at');
            }
        }
        if ($request->has('per_page')) {
            $perPage = (int) $request->input('per_page');
            $products = $products->paginate($perPage);
        } else {
            $products = $products->paginate(30);
        }
        if ($products->isEmpty()) {
            return response()->json([
                'message' => 'No products found',
                'data' => []
            ])->setStatusCode(404, 'Not Found', [
                'Content-Type' => 'application/json'
            ]);
        }
        

        return response()->json([
            'message' => 'List of products',
            'data' => $products
        ])->setStatusCode(200, 'OK', [
            'Content-Type' => 'application/json'
        ]);
    }

    function product_show($slug)
    {
        $product = Product::where('slug', $slug)->with('brand')->with('category')->with('sub_category')->first();
        return response()->json([
            'message' => 'Product details',
            'data' => $product ? $product : 'Product not found'
        ])->setStatusCode($product ? 200 : 404, $product ? 'OK' : 'Not Found', [
            'Content-Type' => 'application/json'
        ]);
    }

     function brands(Request $request)  
    {
        $brands = Brand::where('status', 1)->with('products')->orderBy('created_at', 'desc')->get();
        return response()->json([
            'message' => 'List of brands',
            'data' => $brands,
        ])->setStatusCode(200, 'OK', [
            'Content-Type' => 'application/json'
        ]);
    }
     function categories(Request $request)
    {
        $categories = Category::where('status', 1)->with('sub_categories')->with('products')->orderBy('created_at', 'desc')->get();
        return response()->json([
            'message' => 'List of categories',
            'data' => $categories
        ])->setStatusCode(200, 'OK', [
            'Content-Type' => 'application/json'
        ]);
    }
     function sub_categories(Request $request)
    {
        $sub_categories = SubCategory::where('status', 1)->orderBy('created_at', 'desc')->get();
        return response()->json([
            'message' => 'List of sub categories',
            'data' => $sub_categories
        ])->setStatusCode(200, 'OK', [
            'Content-Type' => 'application/json'
        ]);
    }
     function products_by_category(Request $request, $slug)
    {
        $category = Category::where('slug', $slug)->first();
        if (!$category) {
            return response()->json([
                'message' => 'Category not found',
                'data' => []
            ])->setStatusCode(404, 'Not Found', [
                'Content-Type' => 'application/json'
            ]);
        }

        $products = $category->products()->where('status', 1)->orderBy('created_at', 'desc')->paginate($request->input('per_page', 30));
        if ($products->isEmpty()) {
            return response()->json([
                'message' => 'No products found in this category',
                'data' => []
            ])->setStatusCode(404, 'Not Found', [
                'Content-Type' => 'application/json'
            ]);
        }
        return response()->json([
            'message' => 'List of products in category: ' . $category->name,
            'data' => $products
        ])->setStatusCode(200, 'OK', [
            'Content-Type' => 'application/json'
        ]);
    }
}
