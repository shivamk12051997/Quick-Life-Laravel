<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('coupons', function (Blueprint $table) {
            $table->id();
            $table->string('created_by_id')->nullable();
            $table->string('coupon_code')->nullable();
            $table->string('percentage')->nullable();
            $table->string('amount_limit')->nullable();
            $table->string('coupon_used')->nullable()->default(0);
            $table->string('usage_limit')->nullable();
            $table->string('expiry_date')->nullable();
            $table->string('status')->nullable();
            $table->string('deleted_at')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('coupons');
    }
};
