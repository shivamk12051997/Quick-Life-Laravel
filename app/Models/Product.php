<?php

namespace App\Models;

use Spatie\MediaLibrary\HasMedia;
use Illuminate\Database\Eloquent\Model;
use Spatie\MediaLibrary\InteractsWithMedia;
use Illuminate\Database\Eloquent\SoftDeletes;
use Spatie\MediaLibrary\MediaCollections\Models\Media;

class Product extends Model implements HasMedia
{
    use InteractsWithMedia;
    // Thumbnail conversion
    public function registerMediaConversions(Media $media = null): void
    {
        $this->addMediaConversion('thumb')
              ->width(368)  
              ->height(232)
              ->sharpen(10);
    }

    use SoftDeletes;
    protected $fillable = [
        'created_by_id',
        'brand_id',
        'category_id',
        'sub_category_id',
        'name',
        'slug',
        'unit',
        'qty',
        'prescription_required',
        'mrp_price',
        'sale_price',
        'use_case',
        'description',
        'status',
        'deleted_at',
    ];
    
    public function brand()
    {
        return $this->belongsTo('App\Models\Brand', 'brand_id', 'id');
    }
    public function category()
    {
        return $this->belongsTo('App\Models\Category', 'category_id', 'id');
    }
    public function sub_category()
    {
        return $this->belongsTo('App\Models\SubCategory', 'sub_category_id', 'id');
    }
    
}
