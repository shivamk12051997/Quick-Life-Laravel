<?php

namespace App\Models;

use Spatie\MediaLibrary\HasMedia;
use Illuminate\Database\Eloquent\Model;
use Spatie\MediaLibrary\InteractsWithMedia;
use Illuminate\Database\Eloquent\SoftDeletes;
use Spatie\MediaLibrary\MediaCollections\Models\Media;

class SubCategory extends Model implements HasMedia
{
    use InteractsWithMedia;
    // Thumbnail conversion
    public function registerMediaConversions(Media $media = null): void
    {
        $this->addMediaConversion('thumb')
              ->width(368)  
              ->height(232)
              ->sharpen(10);
    }use SoftDeletes;
    protected $fillable = [
        'created_by_id',
        'category_id',
        'name',
        'slug',
        'img',
        'status',
        'deleted_at',
    ];

    public function products()
    {
    	return $this->hasMany('App\Models\Product', 'sub_category_id', 'id');
    }
    public function category()
    {
        return $this->belongsTo('App\Models\Category', 'category_id', 'id');
    }
}
