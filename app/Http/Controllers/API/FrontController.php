<?php

namespace App\Http\Controllers\API;

use App\Models\Blog;
use App\Models\Cart;
use App\Models\User;
use App\Models\Brand;
use App\Models\Order;
use App\Models\Coupon;
use App\Models\Policy;
use App\Models\Address;
use App\Models\Product;
use App\Models\Category;
use App\Models\ContactForm;
use App\Models\SubCategory;
use App\Models\OrderDetails;
use App\Models\StockDetails;
use Illuminate\Http\Request;
use App\Models\DoctorProfile;
use App\Models\SubscribeForm;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;

class FrontController extends Controller
{
    function home(Request $request)
    {
        
        return response()->json([
            'status' => 'success',
            'message' => 'Welcome to the API Home',
            'data' => []
        ]);
    }

    function products(Request $request)
    {
        // if($request->header('pincode')){
        //     $products = Product::where('status', 1)
        //         ->whereHas('stock_details', function ($query) use ($request) {
        //             $query->whereHas('warehouse', function ($query) use ($request) {
        //                 $query->where('pincode', $request->header('pincode'))
        //                     ->where('status', 1);
        //             });
        //         });
        // }else{
        // }
        $products = Product::where('status', 1);

        if ($request->category_id) {
            $products = $products->where('category_id', $request->input('category_id'));
        }
        if ($request->sub_category_id) {
            $products = $products->where('sub_category_id', $request->input('sub_category_id'));
        }
        if ($request->child_category_id) {
            $products = $products->where('child_category_id', $request->input('child_category_id'));
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
            'status' => 'success',
            'message' => 'List of products',
            'data' => $products
        ])->setStatusCode(200, 'OK', [
            'Content-Type' => 'application/json'
        ]);
    }

    function product_show(Request $request, $slug)
    {
        // if($request->header('pincode')){
        //     $product = Product::where('status', 1)
        //         ->whereHas('stock_details', function ($query) use ($request) {
        //             $query->whereHas('warehouse', function ($query) use ($request) {
        //                 $query->where('pincode', $request->header('pincode'))
        //                     ->where('status', 1);
        //             });
        //         });
        // } else {
        //     $product = Product::where('status', 1);
        // }
        $product = Product::where('status', 1);
        
        $product = $product->where('slug', $slug)->with('brand')->with('category')->with('sub_category')->first();
        return response()->json([
            'status' => 'success',
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
                'status' => 'error',
                'message' => 'No brands found',
                'data' => []
            ])->setStatusCode(200, 'Not Found', [
                'Content-Type' => 'application/json'
            ]);
        }
       
      
        return response()->json([
            'status' => 'success',
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
        if($request->with_child_categories) {
            $categories = $categories->with('child_categories');
        }
        if($request->with_featured_child_categories) {
            $categories = $categories->with('featured_child_categories');
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
            'status' => 'success',
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
            'status' => 'success',
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
                'status' => 'error',
                'message' => 'Category not found',
                'data' => []
            ])->setStatusCode(404, 'Not Found', [
                'Content-Type' => 'application/json'
            ]);
        }

        $products = $category->products()->where('status', 1)->orderBy('created_at', 'desc')->paginate($request->input('per_page', 30));
        if ($products->isEmpty()) {
            return response()->json([
                'status' => 'error',
                'message' => 'No products found in this category',
                'data' => []
            ])->setStatusCode(404, 'Not Found', [
                'Content-Type' => 'application/json'
            ]);
        }
        return response()->json([
            'status' => 'success',
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
                'status' => 'error',
                'message' => 'Validation failed',
                'errors' => $validator->errors()
            ])->setStatusCode(422, 'Unprocessable Entity', [
                'Content-Type' => 'application/json'
            ]);
        }
        if($customer = Auth::guard('sanctum')->user())
        {
            $pincode = $request->header('pincode');     
            $product = Product::find($request->input('product_id'));
            $cart = Cart::updateOrCreate(
                [
                    'created_by_id' => $customer->id,
                    'customer_id' => $customer->id,
                    'product_id' => $request->input('product_id'),
                    'pincode' => $pincode ?? null,
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
                'status' => 'success',
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
                'status' => 'success',
                'message' => 'Cart items retrieved successfully',
                'data' => $cartItems
            ])->setStatusCode(200, 'OK', [
                'Content-Type' => 'application/json'
            ]);
        }
        return response()->json([
            'status' => 'error',
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
                    'status' => 'error',
                    'message' => 'Cart item not found',
                    'data' => []
                ])->setStatusCode(404, 'Not Found', [
                    'Content-Type' => 'application/json'
                ]);
            }
            $cartItem->delete();
            return response()->json([
                'status' => 'success',
                'message' => 'Cart item removed successfully',
                'data' => []
            ])->setStatusCode(200, 'OK', [
                'Content-Type' => 'application/json'
            ]);
        }
        return response()->json([
            'status' => 'error',
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
                    'status' => 'error',
                    'message' => 'Cart is empty',
                    'data' => []
                ])->setStatusCode(400, 'Bad Request', [
                    'Content-Type' => 'application/json'
                ]);
            }
            $input = $request->all();
            // return ($request->address['id']);
            if($address = Address::where('id', ($request->address['id'] ?? 0))->where('customer_id', $customer->id)->first()) {
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
                    'status' => 'error',
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

            $coupon = Coupon::where('coupon_code', $request->input('coupon_code'))->where('coupon_used','<=', 0)->whereDate('expiry_date', '>=', date('Y-m-d'))->where('status', 1)->first();
            if($coupon){
                $coupon->coupon_used = $coupon->coupon_used + 1;
                $coupon->save();
            }

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
                'status' => 'success',
                'message' => 'Checkout successful',
                'data' => [
                    'order' => $order
                ]
            ])->setStatusCode(200, 'OK', [
                'Content-Type' => 'application/json'
            ]);
        }
        return response()->json([
            'status' => 'error',
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
            $processing_orders = Order::where('customer_id', $customer->id)->whereIn('order_status', ['Pending','Processing','Order Placed','Packed'])->count();
            $shipped_orders = Order::where('customer_id', $customer->id)->where('order_status', 'Shipped')->count();
            $delivered_orders = Order::where('customer_id', $customer->id)->where('order_status', 'Delivered')->count();
            $latest_orders = Order::where('customer_id', $customer->id)->orderBy('created_at', 'desc')->take(10)->get();
            $order_count = [
                'total_orders' => $total_orders,
                'processing_orders' => $processing_orders,
                'shipped_orders' => $shipped_orders,
                'delivered_orders' => $delivered_orders,
            ];
            return response()->json([
                'status' => 'success',
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
            'status' => 'error',
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
            $orders = Order::where('customer_id', $customer->id);

            if($request->search){
                $search = $request->input('search');
                $orders = $orders->where(function ($query) use ($search) {
                    $query->where('order_no', 'LIKE', "%{$search}%")
                          ->orWhere('name', 'LIKE', "%{$search}%")
                          ->orWhere('phone', 'LIKE', "%{$search}%");
                });
            }

            $orders =  $orders->with(['order_details.product', 'order_details.category', 'order_details.sub_category', 'order_details.brand'])->orderBy('created_at', 'desc')->paginate($request->per_page ?? 10);
            return response()->json([
                'status' => 'success',
                'message' => 'Order history retrieved successfully',
                'data' => $orders
            ])->setStatusCode(200, 'OK', [
                'Content-Type' => 'application/json'
            ]);
        }
        return response()->json([
            'status' => 'error',
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
                    'status' => 'error',
                    'message' => 'Order not found',
                    'data' => []
                ])->setStatusCode(404, 'Not Found', [
                    'Content-Type' => 'application/json'
                ]);
            }
            return response()->json([
                'status' => 'success',
                'message' => 'Order details retrieved successfully',
                'data' => $order
            ])->setStatusCode(200, 'OK', [
                'Content-Type' => 'application/json'
            ]);
        }
        return response()->json([
            'status' => 'error',
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
                'landmark' => 'nullable|string|max:255',
                'city' => 'required|string|max:100',
                'state' => 'required|string|max:100',
                'country' => 'required|string|max:100',
                'pincode' => 'required|string|max:255',
                'latitude' => 'required|max:255',
                'longitude' => 'nullable|max:255',
                'map_full_address' => 'nullable|string|max:255',
                'address_type' => 'nullable|string|max:255',
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
                    'landmark' => $request->input('landmark'),
                    'city' => $request->input('city'),
                    'state' => $request->input('state'),
                    'country' => $request->input('country'),
                    'pincode' => $request->input('pincode'),
                    'latitude' => $request->input('latitude'),
                    'longitude' => $request->input('longitude'),
                    'map_full_address' => $request->input('map_full_address'),
                    'address_type' => $request->input('address_type')
                ]
            );
            return response()->json([
                'status' => 'success',
                'message' => 'Address stored successfully',
                'data' => $address
            ])->setStatusCode(200, 'OK', [
                'Content-Type' => 'application/json'
            ]);
        }
        
        return response()->json([
            'status' => 'error',
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
                'status' => 'success',
                'message' => 'Addresses retrieved successfully',
                'data' => $addresses
            ])->setStatusCode(200, 'OK', [
                'Content-Type' => 'application/json'
            ]);
        }
        return response()->json([
            'status' => 'error',
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
                'status' => 'success',
                'message' => 'Address retrieved successfully',
                'data' => $address ? $address : 'Address not found'
            ])->setStatusCode($address ? 200 : 404, $address ? 'OK' : 'Not Found', [
                'Content-Type' => 'application/json'
            ]);
        }
        
        return response()->json([
            'status' => 'error',
            'message' => 'Unauthorized',
            'data' => []
        ])->setStatusCode(401, 'Unauthorized', [
            'Content-Type' => 'application/json'
        ]);
    }
    public function store_availability($pincode)
    {
        $warehouse = User::where('pincode', $pincode)->where('role_as', 'Warehouse')->first();
        if($warehouse) {
            return response()->json([
                'status' => 'success',
                'message' => 'Store availability retrieved successfully',
                'data' => $warehouse
            ])->setStatusCode(200, 'OK', [
                'Content-Type' => 'application/json'
            ]);
        }
        return response()->json([
            'status' => 'error',
            'message' => 'Store not found',
            'data' => []
        ])->setStatusCode(200, 'Not Found', [
            'Content-Type' => 'application/json'
        ]);
    }

    public function subscribe_store(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'email' => 'required|email',
        ]);

        if ($validator->fails()) {
            return response()->json(['message' => 'Validation failed', 'errors' => $validator->errors()], 422);
        }

        $subscribe_form = SubscribeForm::updateOrCreate(
            [
                'email' => $request->input('email'),
            ],
            [
                'status' => 1, // Assuming you want to set the status to active
            ]
        );

        // Here you would typically save the subscription to the database
        // For this example, we'll just return a success message
        return response()->json([
            'status' => 'success',
            'message' => 'Subscription successful',
            'data' => $request->only('email')
        ], 200);
    }

    public function contact_store(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'name' => 'required|string|max:255',
            'email' => 'required|email',
            'subject' => 'required|string|max:255',
            'message' => 'required|string',
        ]);

        if ($validator->fails()) {
            return response()->json(['message' => 'Validation failed', 'errors' => $validator->errors()], 422);
        }

        $input = $request->only('name', 'email', 'subject', 'message');
        ContactForm::create($input);

        // Here you would typically send the contact message to the store
        // For this example, we'll just return a success message
        return response()->json([
            'status' => 'success',
            'message' => 'Contact message sent successfully',
            'data' => $request->only('name', 'email', 'subject', 'message')
        ], 200);
    }

    public function blogs(Request $request)
    {
        $blogs = Blog::where('status', 1)->latest()->paginate($request->per_page ?? 9);
        return response()->json([
            'status' => 'success',
            'message' => 'Blogs retrieved successfully',
            'data' => $blogs
        ], 200);
    }
    public function blog_show($slug)
    {
        $blog = Blog::where('slug', $slug)->where('status', 1)->first();
        if ($blog) {
            return response()->json([
                'status' => 'success',
                'message' => 'Blog retrieved successfully',
                'data' => $blog
            ], 200);
        }
        return response()->json([
            'status' => 'error',
            'message' => 'Blog not found',
            'data' => []
        ], 404);
    }
    public function policies(Request $request)
    {
        $policies = Policy::where('status', 1)->get();
        return response()->json([
            'status' => 'success',
            'message' => 'Policies retrieved successfully',
            'data' => $policies
        ], 200);
    }
    public function policy_show($slug)
    {
        $policy = Policy::where('slug', $slug)->where('status', 1)->first();
        if ($policy) {
            return response()->json([
                'status' => 'success',
                'message' => 'Policy retrieved successfully',
                'data' => $policy
            ], 200);
        }
        return response()->json([
            'status' => 'error',
            'message' => 'Blog not found',
            'data' => []
        ], 404);
    }
    public function doctor_register(Request $request)
    {
        // Validation
        $validator = Validator::make($request->all(), [
            'name' => 'required|string|max:255',
            'email' => 'required|email|max:255|unique:doctor_profiles,email',
            'phone' => 'required|string|max:20|unique:doctor_profiles,phone',
            'specialization' => 'required|string|max:255',
            'experience' => 'required|numeric|min:0',
            'mbbs_degree_certificate' => 'nullable|file|mimes:pdf,jpg,jpeg,png,webp|max:4096',
            'medical_council_registration_certificate' => 'nullable|file|mimes:pdf,jpg,jpeg,png,webp|max:4096',
            'aadhaar_card' => 'nullable|file|mimes:pdf,jpg,jpeg,png,webp|max:4096',
            'pan_card' => 'nullable|file|mimes:pdf,jpg,jpeg,png,webp|max:4096',
            'bank_account_details' => 'nullable|file|mimes:pdf,jpg,jpeg,png,webp|max:4096',
            'professional_photo' => 'nullable|image|mimes:jpg,jpeg,png,webp|max:2048',
        ]);

        if ($validator->fails()) {
            return response()->json(['status' => 'error', 'message' => 'Validation Error', 'errors' => $validator->errors()], 422);
        }

        // Data Save
        $input = $request->only([
            'name', 'email', 'phone', 'specialization', 'experience'
        ]);
        $input['created_by_id'] = 0;
        $input['status'] = 0;

        $doctor = DoctorProfile::create($input);

        // File Uploads
        if($request->hasFile('main_img')) {
            $doctor->addMedia($request->file('main_img'))->toMediaCollection('main_img');
        }
        if($request->hasFile('mbbs_degree_certificate')) {
            $doctor->addMedia($request->file('mbbs_degree_certificate'))->toMediaCollection('mbbs_degree_certificate');
        }
        if($request->hasFile('medical_council_registration_certificate')) {
            $doctor->addMedia($request->file('medical_council_registration_certificate'))->toMediaCollection('medical_council_registration_certificate');
        }
        if($request->hasFile('aadhaar_card')) {
            $doctor->addMedia($request->file('aadhaar_card'))->toMediaCollection('aadhaar_card');
        }
        if($request->hasFile('pan_card')) {
            $doctor->addMedia($request->file('pan_card'))->toMediaCollection('pan_card');
        }
        if($request->hasFile('bank_account_details')) {
            $doctor->addMedia($request->file('bank_account_details'))->toMediaCollection('bank_account_details');
        }
        if($request->hasFile('professional_photo')) {
            $doctor->addMedia($request->file('professional_photo'))->toMediaCollection('professional_photo');
        }

        return response()->json(['status' => 'success', 'message' => 'Doctor registered successfully', 'doctor' => $doctor], 200);
    }

    public function coupon_codes()
    {
        $coupons = Coupon::whereDate('expiry_date', '>=', date('Y-m-d'))->where('status', 1)->get();
        if ($coupons->isEmpty()) {
            return response()->json([
                'status' => 'success',
                'message' => 'No Coupons Available',
                'data' => []
            ], 200);
        }
        return response()->json([
            'status' => 'success',
            'message' => 'Coupons retrieved successfully',
            'data' => $coupons
        ], 200);
    }
    public function verify_coupon(Request $request)
    {
        $coupon = Coupon::where('coupon_code', $request->input('coupon_code'))->where('coupon_used','<=', 0)->whereDate('expiry_date', '>=', date('Y-m-d'))->where('status', 1)->first();
        if ($coupon) {
            return response()->json([
                'status' => 'success',
                'message' => 'Coupon verified successfully',
                'data' => $coupon
            ], 200);
        }
        return response()->json([
            'status' => 'error',
            'message' => 'Invalid Coupon',
            'data' => []
        ], 200);
    }
}