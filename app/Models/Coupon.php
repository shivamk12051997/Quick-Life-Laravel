<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Coupon extends Model
{
    use SoftDeletes;
    protected $fillable = [
        'created_by_id',
        'coupon_code',
        'percentage',
        'amount_limit',
        'coupon_used',
        'usage_limit',
        'expiry_date',
        'status',
    ];
}
