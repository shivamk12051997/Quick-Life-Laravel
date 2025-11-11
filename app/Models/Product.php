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
              ->sharpen(10)
              ->format('webp'); // Ensure the format is set to .webp
    }

    use SoftDeletes;
    protected $fillable = [
        'created_by_id',
        'brand_id',
        'category_id',
        'sub_category_id',
        'child_category_id',
        'code',
        'sku',
        'name',
        'slug',
        'unit',
        'qty',
        'prescription_required',
        'mrp_price',
        'sale_price',
        'tax_rate',
        'tax_amount',
        'use_case',
        'description',
        'variation_name',
        'variation_product_ids',
        'is_featured',
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
    public function child_category()
    {
        return $this->belongsTo('App\Models\ChildCategory', 'child_category_id', 'id');
    }
    public function stock_details()
    {
        return $this->hasMany('App\Models\StockDetails', 'product_id', 'id');
    }

    protected $appends = ['image_url', 'thumb_url', 'gallery_urls', 'current_stock', 'variation_products', 'brand_name', 'category_name'];

    public function getBrandNameAttribute()
    {
        return $this->brand ? $this->brand->name : null;
    }
    public function getCategoryNameAttribute()
    {
        return $this->category ? $this->category->name : null;
    }

    public function getThumbUrlAttribute()
    {
        $media = $this->getFirstMedia('main_img');
        return $media ? $media->getUrl('thumb') : null;
    }

    public function getGalleryUrlsAttribute()
    {
        return $this->getMedia('gallery_imgs')->map(function ($media) {
            return $media->getUrl();
        })->toArray();
    }

    public function getCurrentStockAttribute()
    {
        $in =  $this->stock_details()->where('in_out', 'In')->sum('qty');
        $out =  $this->stock_details()->where('in_out', 'Out')->sum('qty');
        return $in - $out;
    }
    public function getVariationProductsAttribute()
    {
        if (empty($this->variation_product_ids)) {
            return [];
        }
        
        $variation_ids = json_decode($this->variation_product_ids, true);
        
        if (!is_array($variation_ids) || empty($variation_ids)) {
            return [];
        }
        
        return Product::whereIn('id', $variation_ids)
                     ->where('id', '!=', $this->id)
                     ->where('status', 1)
                     ->select('id', 'name', 'slug', 'sale_price', 'mrp_price')
                     ->get();
    }

    public function getImageUrlAttribute()
    {
        $media = $this->getFirstMedia('main_img');
        return $media ? $media->getUrl() : null;
    }


    

}
