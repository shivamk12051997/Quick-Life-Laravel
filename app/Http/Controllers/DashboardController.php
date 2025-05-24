<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;

class DashboardController extends Controller
{
    public function index()
    {
        if(Auth::user()->role_as == 'Admin')
        {
            return redirect()->route('admin.dashboard')->with('error', session('error'));
        }
        else if(Auth::user()->role_as == 'Warehouse')
        {
            return redirect()->route('warehouse.dashboard')->with('error', session('error'));
        }
        else
        {
            return redirect()->route('user.dashboard')->with('error', session('error'));
        }
    }
}
