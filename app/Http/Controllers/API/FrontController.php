<?php

namespace App\Http\Controllers\API;

use App\Models\Cart;
use App\Models\Brand;
use App\Models\Order;
use App\Models\Address;
use App\Models\Product;
use App\Models\Category;
use App\Models\SubCategory;
use App\Models\OrderDetails;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;

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
        $products = Product::where('status', 1);

        if ($request->category_id) {
            $products = $products->where('category_id', $request->input('category_id'));
        }
        if ($request->sub_category_id) {
            $products = $products->where('sub_category_id', $request->input('sub_category_id'));
        }
        if ($request->brand_id) {
            $products = $products->where('brand_id', $request->input('brand_id'));
        }
        if ($request->search) {
            $search = $request->input('search');
            $products = $products->where(function ($query) use ($search) {
                $query->where('name', 'LIKE', "%{$search}%");
            });
        }
        if ($request->sort_by) {
            $sort_by = $request->input('sort_by');
            if ($sort_by == 'price_low') {
                $products = $products->orderBy('sale_price','asc');
            } elseif ($sort_by == 'price_high') {
                $products = $products->orderBy('sale_price','desc');
            } elseif ($sort_by == 'newest') {
                $products = $products->orderBy('id','desc');
            } elseif ($sort_by == 'oldest') {
                $products = $products->orderBy('id','asc');
            } elseif ($sort_by == 'name_asc') {
                $products = $products->orderBy('name', 'asc');
            } elseif ($sort_by == 'name_desc') {
                $products = $products->orderBy('name', 'desc');
            }
        }else{
            $products = $products->orderBy('id','desc');
        }
        if ($request->per_page) {
            $perPage = (int) $request->input('per_page');
            $products = $products->paginate($perPage);
        } else {
            $products = $products->paginate(30);
        }
        // if ($products->isEmpty()) {
        //     return response()->json([
        //         'message' => 'No products found',
        //         'data' => []
        //     ])->setStatusCode(404, 'Not Found', [
        //         'Content-Type' => 'application/json'
        //     ]);
        // }
        

        return response()->json([
            'message' => 'List of products',
            'data' => $products
        ])->setStatusCode(200, 'OK', [
            'Content-Type' => 'application/json'
        ]);
    }

    function product_show($slug)
    {
        $product = Product::where('status', 1)->where('slug', $slug)->with('brand')->with('category')->with('sub_category')->first();
        return response()->json([
            'message' => 'Product details',
            'data' => $product ? $product : 'Product not found'
        ])->setStatusCode($product ? 200 : 404, $product ? 'OK' : 'Not Found', [
            'Content-Type' => 'application/json'
        ]);
    }

     function brands(Request $request)  
    {
        $brands = Brand::where('status', 1);
        if ($request->search) {
            $search = $request->input('search');
            $brands = $brands->where(function ($query) use ($search) {
                $query->where('name', 'LIKE', "%{$search}%");
            });
        }
        if ($request->sort_by) {
            $sort_by = $request->input('sort_by');
            if ($sort_by == 'name_asc') {
                $brands = $brands->orderBy('name', 'asc');
            } elseif ($sort_by == 'name_desc') {
                $brands = $brands->orderBy('name', 'desc');
            } else {
                $brands = $brands->orderBy('id', 'desc');
            }
        } else {
            $brands = $brands->orderBy('id', 'desc');
        }
        if($request->is_featured) {
            $brands = $brands->where('is_featured', 1);
        }
        if ($request->with_products) {
            $brands = $brands->with('products');
        }
        if ($request->with_featured_products) {
            $brands = $brands->with('featured_products');
        }
        if ($request->per_page) {
            $perPage = (int) $request->input('per_page');
            $brands = $brands->paginate($perPage);
        } else {
            $brands = $brands->get();
        }
        if ($brands->isEmpty()) {
            return response()->json([
                'message' => 'No brands found',
                'data' => []
            ])->setStatusCode(404, 'Not Found', [
                'Content-Type' => 'application/json'
            ]);
        }
       
      
        return response()->json([
            'message' => 'List of brands',
            'data' => $brands,
        ])->setStatusCode(200, 'OK', [
            'Content-Type' => 'application/json'
        ]);
    }
     function categories(Request $request)
    {
        $categories = Category::where('status', 1);
        if($request->search) {
            $search = $request->search;
            $categories = $categories->where(function ($query) use ($search) {
                $query->where('name', 'LIKE', "%{$search}%");
            });
        }
        if($request->has('sort_by')) {
            $sort_by = $request->sort_by;
            if ($sort_by == 'name_asc') {
                $categories = $categories->orderBy('name', 'asc');
            } elseif ($sort_by == 'name_desc') {
                $categories = $categories->orderBy('name', 'desc');
            } else {
                $categories = $categories->orderBy('id', 'desc');
            }
        } else {
            $categories = $categories->orderBy('id', 'desc');
        }

        if($request->is_featured) {
            $categories = $categories->where('is_featured', 1);
        }
        if($request->with_sub_categories) {
            $categories = $categories->with('sub_categories');
        }
        if($request->with_featured_sub_categories) {
            $categories = $categories->with('featured_sub_categories');
        }
        if($request->with_products) {
            $categories = $categories->with('products');
        }
        if($request->with_featured_products) {
            $categories = $categories->with('featured_products');
        }

        if ($request->per_page) {
            $perPage = (int) $request->input('per_page');
            $categories = $categories->paginate($perPage);
        } else {
            $categories = $categories->get();
        }
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
     function products_by_category(Request $request, $id)
    {
        $category = Category::where('id', $id)->where('status', 1)->first();
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

    public function add_to_cart(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'product_id' => 'required|exists:products,id,status,1,deleted_at,NULL',
            'qty' => 'required|integer|min:1',
        ]);
        if ($validator->fails()) {
            return response()->json([
                'message' => 'Validation failed',
                'errors' => $validator->errors()
            ])->setStatusCode(422, 'Unprocessable Entity', [
                'Content-Type' => 'application/json'
            ]);
        }
        if($customer = Auth::guard('sanctum')->user())
        {
            $product = Product::find($request->input('product_id'));
            $cart = Cart::updateOrCreate(
                [
                    'created_by_id' => $customer->id,
                    'customer_id' => $customer->id,
                    'product_id' => $request->input('product_id'),
                ],
                [
                    'category_id' => $product->category_id,
                    'sub_category_id' => $product->sub_category_id,
                    'brand_id' => $product->brand_id,
                    'qty' => ($request->input('qty') ?? 1),
                    'price' => $product->sale_price,
                    'total_amount' => $product->sale_price * ($request->input('qty') ?? 1),
                    'tax_rate' => $product->tax_rate,
                    'tax_amount' => ($product->sale_price * ($request->input('qty') ?? 1)) * ($product->tax_rate / 100),
                    'prescription_required' => $product->prescription_required,
                ]
            );
            return response()->json([
                'message' => 'Product added to cart successfully',
                'data' => $cart
            ])->setStatusCode(200, 'OK', [
                'Content-Type' => 'application/json'
            ]);
        }
    }

    public function cart_items(Request $request)
    {
        if($customer = Auth::guard('sanctum')->user())
        {
            $cartItems = Cart::where('customer_id', $customer->id)
                ->with(['product', 'category', 'sub_category', 'brand'])
                ->get();
            return response()->json([
                'message' => 'Cart items retrieved successfully',
                'data' => $cartItems
            ])->setStatusCode(200, 'OK', [
                'Content-Type' => 'application/json'
            ]);
        }
        return response()->json([
            'message' => 'Unauthorized',
            'data' => []
        ])->setStatusCode(401, 'Unauthorized', [
            'Content-Type' => 'application/json'
        ]);
    }

    public function remove_cart_item(Request $request)
    {
        if($customer = Auth::guard('sanctum')->user())
        {
            $cartItem = Cart::where('id', $request->input('item_id'))
                ->where('customer_id', $customer->id)
                ->first();
            if (!$cartItem) {
                return response()->json([
                    'message' => 'Cart item not found',
                    'data' => []
                ])->setStatusCode(404, 'Not Found', [
                    'Content-Type' => 'application/json'
                ]);
            }
            $cartItem->delete();
            return response()->json([
                'message' => 'Cart item removed successfully',
                'data' => []
            ])->setStatusCode(200, 'OK', [
                'Content-Type' => 'application/json'
            ]);
        }
        return response()->json([
            'message' => 'Unauthorized',
            'data' => []
        ])->setStatusCode(401, 'Unauthorized', [
            'Content-Type' => 'application/json'
        ]);
    }
    public function place_order(Request $request)
    {
        if($customer = Auth::guard('sanctum')->user())
        {
            $cartItems = Cart::where('customer_id', $customer->id)->get();
            if ($cartItems->isEmpty()) {
                return response()->json([
                    'message' => 'Cart is empty',
                    'data' => []
                ])->setStatusCode(400, 'Bad Request', [
                    'Content-Type' => 'application/json'
                ]);
            }
            $input = $request->all();

            if($address = Address::where('id', $request->input('address_id'))->where('customer_id', $customer->id)->first()) {
                $input['address_id'] = $address->id;
                $input['name'] = $address->name;
                $input['phone'] = $address->phone;
                $input['address_1'] = $address->address_1;
                $input['address_2'] = $address->address_2;
                $input['city'] = $address->city;
                $input['state'] = $address->state;
                $input['country'] = $address->country;
                $input['pincode'] = $address->pincode;
            } else {
                return response()->json([
                    'message' => 'Address not found',
                    'data' => []
                ])->setStatusCode(404, 'Not Found', [
                    'Content-Type' => 'application/json'
                ]);
            }

            $input['created_by_id'] = $customer->id;
            $input['created_by_role'] = 'Customer';
            $input['customer_id'] = $customer->id;
            $input['order_status'] = 'Pending'; // Default status
            $input['payment_method'] = $request->input('payment_method', 'Cash on Delivery'); // Default payment method
            $input['payment_status'] = $request->input('payment_status', 'Pending'); // Default payment status
            $input['sub_total'] = $cartItems->sum('total_amount');
            $input['shipping_cost'] = $request->input('shipping_cost', 0); // Default shipping cost
            $input['total_tax_amount'] = $cartItems->sum('tax_amount'); // Default total tax amount
            $input['discount'] = $request->input('discount', 0);
            $input['grand_total'] = (($input['sub_total'] + $input['shipping_cost']) - $input['discount']); // Default grand total
            $order = Order::create($input);
            $order->order_no = 'ORD-' . str_pad($order->id, 3, '0', STR_PAD_LEFT);
            $order->save();
            // Insert order details

            foreach ($cartItems as $item) {
                $orderDetails = [];
                $orderDetails['created_by_id'] = $customer->id;
                $orderDetails['created_by_role'] = 'Customer';
                $orderDetails['customer_id'] = $customer->id;
                $orderDetails['order_id'] = $order->id;
                $orderDetails['product_id'] = $item->product_id;
                $orderDetails['category_id'] = $item->category_id;
                $orderDetails['sub_category_id'] = $item->sub_category_id;
                $orderDetails['brand_id'] = $item->brand_id;
                $orderDetails['price'] = $item->price;
                $orderDetails['qty'] = $item->qty;
                $orderDetails['total_amount'] = $item->total_amount;
                $orderDetails['tax_rate'] = $item->tax_rate;
                $orderDetails['tax_amount'] = $item->tax_amount;
                OrderDetails::create($orderDetails);
            }
            Cart::where('customer_id', $customer->id)->delete();
            return response()->json([
                'message' => 'Checkout successful',
                'data' => [
                    'order' => $order
                ]
            ])->setStatusCode(200, 'OK', [
                'Content-Type' => 'application/json'
            ]);
        }
        return response()->json([
            'message' => 'Unauthorized',
            'data' => []
        ])->setStatusCode(401, 'Unauthorized', [
            'Content-Type' => 'application/json'
        ]);
    }

    public function dashboard_data(Request $request)
    {
        if($customer = Auth::guard('sanctum')->user())
        {
            $total_orders = Order::where('customer_id', $customer->id)->count();
            $processing_orders = Order::where('customer_id', $customer->id)->whereIn('order_status', ['Processing','Order Placed','Packed'])->count();
            $shipped_orders = Order::where('customer_id', $customer->id)->where('order_status', 'Shipped')->count();
            $delivered_orders = Order::where('customer_id', $customer->id)->where('order_status', 'Delivered')->count();
            $latest_orders = Order::where('customer_id', $customer->id)->orderBy('created_at', 'desc')->take(10)->get();
            $order_count = [
                'total' => $total_orders,
                'processing' => $processing_orders,
                'shipped' => $shipped_orders,
                'delivered' => $delivered_orders,
            ];
            return response()->json([
                'message' => 'Dashboard data retrieved successfully',
                'data' => [
                    'order_count' => $order_count,
                    'latest_orders' => $latest_orders,
                ]
            ])->setStatusCode(200, 'OK', [
                'Content-Type' => 'application/json'
            ]);
        }
        return response()->json([
            'message' => 'Unauthorized',
            'data' => []
        ])->setStatusCode(401, 'Unauthorized', [
            'Content-Type' => 'application/json'
        ]);
    }

    public function order_history(Request $request)
    {
        if($customer = Auth::guard('sanctum')->user())
        {
            $orders = Order::where('customer_id', $customer->id)->with(['order_details.product', 'order_details.category', 'order_details.sub_category', 'order_details.brand'])->orderBy('created_at', 'desc')->paginate(10);
            return response()->json([
                'message' => 'Order history retrieved successfully',
                'data' => $orders
            ])->setStatusCode(200, 'OK', [
                'Content-Type' => 'application/json'
            ]);
        }
        return response()->json([
            'message' => 'Unauthorized',
            'data' => []
        ])->setStatusCode(401, 'Unauthorized', [
            'Content-Type' => 'application/json'
        ]);
    }

    public function order_details($order_no)
    {
        if($customer = Auth::guard('sanctum')->user())
        {
            $order = Order::where('order_no', $order_no)->with('order_details')->where('customer_id', $customer->id)->first();
            if (!$order) {
                return response()->json([
                    'message' => 'Order not found',
                    'data' => []
                ])->setStatusCode(404, 'Not Found', [
                    'Content-Type' => 'application/json'
                ]);
            }
            return response()->json([
                'message' => 'Order details retrieved successfully',
                'data' => $order
            ])->setStatusCode(200, 'OK', [
                'Content-Type' => 'application/json'
            ]);
        }
        return response()->json([
            'message' => 'Unauthorized',
            'data' => []
        ])->setStatusCode(401, 'Unauthorized', [
            'Content-Type' => 'application/json'
        ]);
    }

    public function store_address(Request $request)
    {
        if($customer = Auth::guard('sanctum')->user())
        {
            $request->validate([
                'name' => 'required|string|max:255',
                'phone' => 'required|string',
                'address_1' => 'required|string|max:255',
                'address_2' => 'nullable|string|max:255',
                'city' => 'required|string|max:100',
                'state' => 'required|string|max:100',
                'country' => 'required|string|max:100',
                'pincode' => 'required|string|max:10',
            ]);
            $address = Address::updateOrCreate(
                [
                    'customer_id' => $customer->id,
                    'id' => ($request->input('id') ?? 0)
                ],
                [
                    'name' => $request->input('name'),
                    'phone' => $request->input('phone'),
                    'address_1' => $request->input('address_1'),
                    'address_2' => $request->input('address_2'),
                    'city' => $request->input('city'),
                    'state' => $request->input('state'),
                    'country' => $request->input('country'),
                    'pincode' => $request->input('pincode')
                ]
            );
            return response()->json([
                'message' => 'Address stored successfully',
                'data' => $address
            ])->setStatusCode(200, 'OK', [
                'Content-Type' => 'application/json'
            ]);
        }
        
        return response()->json([
            'message' => 'Unauthorized',
            'data' => []
        ])->setStatusCode(401, 'Unauthorized', [
            'Content-Type' => 'application/json'
        ]);
    }
    public function get_addresses(Request $request)
    {
        if($customer = Auth::guard('sanctum')->user())
        {
            $addresses = Address::where('customer_id', $customer->id)->get();
            return response()->json([
                'message' => 'Addresses retrieved successfully',
                'data' => $addresses
            ])->setStatusCode(200, 'OK', [
                'Content-Type' => 'application/json'
            ]);
        }
        return response()->json([
            'message' => 'Unauthorized',
            'data' => []
        ])->setStatusCode(401, 'Unauthorized', [
            'Content-Type' => 'application/json'
        ]);
    }
    public function get_address($id)
    {
        if($customer = Auth::guard('sanctum')->user())
        {
            $address = Address::where('id', $id)->where('customer_id', $customer->id)->first();
            return response()->json([
                'message' => 'Address retrieved successfully',
                'data' => $address ? $address : 'Address not found'
            ])->setStatusCode($address ? 200 : 404, $address ? 'OK' : 'Not Found', [
                'Content-Type' => 'application/json'
            ]);
        }
        
        return response()->json([
            'message' => 'Unauthorized',
            'data' => []
        ])->setStatusCode(401, 'Unauthorized', [
            'Content-Type' => 'application/json'
        ]);
    }
    
}
