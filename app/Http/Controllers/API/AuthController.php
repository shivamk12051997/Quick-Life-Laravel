<?php

namespace App\Http\Controllers\API;

use App\Models\User;
use App\Models\Customer;
use App\Models\Warehouse;
use Illuminate\Http\Request;
use Illuminate\Validation\Rule;
use App\Mail\WarehouseRegisterMail;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\Facades\Validator;

class AuthController extends Controller
{
    public function register(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'name' => 'required|string|max:255',
            'email' => 'nullable|email',
            'phone' => 'required|string|max:15|'.Rule::unique('customers', 'phone')->whereNull('deleted_at'),
        ]);

        if ($validator->fails()) {
            return response()->json(['message' => 'Validation failed', 'errors' => $validator->errors()], 422);
        }

        // Create the customer
        $customer = Customer::create([
            'name' => $request->name,
            'email' => $request->email,
            'phone' => $request->phone,
            'otp' => rand(100000, 999999), // Generate a random OTP
            'otp_expires_at' => now()->addMinutes(10), // Set OTP expiration time
            'status' => 'Active', // Set initial status
        ]);

        $response = [
            'message' => 'Registration successful. Please verify your phone number with the OTP sent.',
            'phone' => $customer->phone,
            'otp' => $customer->otp,
            'otp_expires_at' => $customer->otp_expires_at,
        ];

        return response()->json($response, 201);
    }

    public function verify_login_otp(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'phone' => 'required|string|max:15',
            'otp' => 'required|digits:6',
        ]);

        if ($validator->fails()) {
            return response()->json(['message' => 'Validation failed', 'errors' => $validator->errors()], 422);
        }

        $customer = Customer::where('phone', $request->phone)
            ->where('otp', $request->otp)
            ->where('otp_expires_at', '>', now())
            ->first();

        if (!$customer) {
            return response()->json(['message' => 'Invalid OTP'], 401);
        }

        // Update customer status to Active
        $customer->status = 'Active';
        $customer->otp = null; // Clear OTP after successful verification
        $customer->otp_expires_at = null; // Clear OTP expiration time
        $customer->save();
        // Optionally, you can log the user in
        $token = $customer->createToken(env('APP_NAME'))->plainTextToken;

        return response()->json(['message' => 'Phone number verified successfully', 'user' => $customer, 'token' => $token], 200);
    }

    public function login(Request $request)
    {
        $credentials = $request->only('phone');
        $validator = Validator::make($credentials, [
            'phone' => 'required|string|digits:10',
        ]);
        if ($validator->fails()) {
            return response()->json(['message' => 'Validation failed', 'errors' => $validator->errors()], 422);
        }
        $customer = Customer::where('phone', $credentials['phone'])->where('status', 'Active')->first();
        // if($customer)
        // {
        //     $user = [];
        //     $token = $customer->createToken(env('APP_NAME'))->plainTextToken;
        //     $user['name'] = $customer->name;
        //     $user['email'] = $customer->email;
        //     $user['phone'] = $customer->phone;

        //     return response()->json([
        //         'message' => 'Login successful. Please verify your phone number with the OTP sent.',
        //         'user' => $user,
        //         'token' => $token,
        //     ], 200);
        // }
        if ($customer) {
            // Generate a new OTP
            $customer->otp = rand(100000, 999999);
            $customer->otp_expires_at = now()->addMinutes(10); // Set OTP expiration time
            $customer->save();

            // Here you would typically send the OTP to the user's phone via SMS
            // For this example, we'll just return it in the response
            return response()->json([
                'message' => 'Login successful. Please verify your phone number with the OTP sent.',
                'phone' => $customer->phone,
                'otp' => $customer->otp,
                'otp_expires_at' => $customer->otp_expires_at,
            ], 200);
        }

        return response()->json(['message' => 'Phone Number not found'], 401);
    }

    public function resend_otp(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'phone' => 'required|string|digits:10|exists:customers,phone,status,Active,deleted_at,NULL',
        ]);

        if ($validator->fails()) {
            return response()->json(['message' => 'Validation failed', 'errors' => $validator->errors()], 422);
        }

        $customer = Customer::where('phone', $request->phone)->first();
        if ($customer) {
            // Generate a new OTP
            $customer->otp = rand(100000, 999999);
            $customer->otp_expires_at = now()->addMinutes(10); // Set OTP expiration time
            $customer->save();

            // Here you would typically send the OTP to the user's phone via SMS
            // For this example, we'll just return it in the response
            return response()->json([
                'message' => 'OTP resent successfully.',
                'phone' => $customer->phone,
                'otp' => $customer->otp,
                'otp_expires_at' => $customer->otp_expires_at,
            ], 200);
        }

        return response()->json(['message' => 'Customer not found'], 404);
    }

    
    public function verify_token(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'token' => 'required|string',
        ]);

        if ($validator->fails()) {
            return response()->json(['message' => 'Validation failed', 'errors' => $validator->errors()], 422);
        }

        $customer = Auth::guard('sanctum')->user();

        dd($customer);

        if (!$customer) {
            return response()->json(['message' => 'Unauthorized'], 401);
        }

        return response()->json(['message' => 'Token is valid', 'user' => $customer], 200);
    }

    public function warehouse_register(Request $request)
    {
        if ($warehouse = User::where('phone', $request->phone)->first()) {
            return response()->json(['status' => 'error', 'message' => 'Phone number already exists'], 200);
        }
        if ($user = User::where('email', $request->email)->first()) {
            return response()->json(['status' => 'error', 'message' => 'Email address already exists'], 200);
        }
        $input = $request->all();
        $input['created_by_id'] = 0;
        $input['status'] =  0;
        $input['name'] =  $request->warehouse_name;
        $input['password'] = Hash::make($request->phone);
        $input['show_password'] = $request->phone;
        
        // If validation passes, create the warehouse
        $user = User::create($input);
        $user->email_verified_at = now();
        $user->role_as = 'Warehouse';
        $user->save();

        Mail::to($user->email)->send(new WarehouseRegisterMail($user));

        // dd($request->all());
        if($request->hasFile('drug_license')) {
            $user->addMedia($request->file('drug_license'))->toMediaCollection('drug_license');
        }
        if($request->hasFile('gst_certificate')) {
            $user->addMedia($request->file('gst_certificate'))->toMediaCollection('gst_certificate');
        }

        return response()->json(['status' => 'success', 'message' => 'Warehouse registered successfully', 'warehouse' => $warehouse], 200);
    }
}

