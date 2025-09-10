<?php

namespace App\Models;

use Spatie\MediaLibrary\HasMedia;
use Illuminate\Database\Eloquent\Model;
use Spatie\MediaLibrary\InteractsWithMedia;
use Illuminate\Database\Eloquent\SoftDeletes;
use Spatie\MediaLibrary\MediaCollections\Models\Media;


class DoctorProfile extends Model implements HasMedia
{
    use InteractsWithMedia;
    // Thumbnail conversion
    public function registerMediaConversions(Media $media = null): void
    {
        $this->addMediaConversion('thumb')
                ->width(368)  
                ->height(232)
                ->sharpen(10)
                ->format('webp');
    }

    use SoftDeletes;
    protected $fillable = [
        'name',
        'email',
        'phone',
        'specialization',
        'experience',
    ];
}
