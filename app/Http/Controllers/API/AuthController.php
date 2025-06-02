<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class AuthController extends Controller
{
    public function login(Request $request)
    {
        // Logic for user login
        return response()->json(['message' => 'Login successful']);
    }

    public function register(Request $request)
    {
        
        return response()->json(['message' => 'Registration successful']);
    }
}
