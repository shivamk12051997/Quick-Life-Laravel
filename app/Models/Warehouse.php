<?php

namespace App\Models;

use Spatie\MediaLibrary\HasMedia;
use Illuminate\Database\Eloquent\Model;
use Spatie\MediaLibrary\InteractsWithMedia;
use Spatie\MediaLibrary\MediaCollections\Models\Media;

class Warehouse extends Model implements HasMedia
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

    protected $appends = ['drug_license', 'gst_certificate'];

    public function getDrugLicenseAttribute()
    {
        $media = $this->getFirstMedia('drug_license');
        return $media ? $media->getUrl() : null;
    }

    public function getGstCertificateAttribute()
    {
        $media = $this->getFirstMedia('gst_certificate');
        return $media ? $media->getUrl() : null;
    }
    
    use \Illuminate\Database\Eloquent\SoftDeletes;
    protected $fillable = [
        'created_by_id',
        'user_id',
        'name',
        'email',
        'phone',
        'warehouse_name',
        'license_number',
        'gst_number',
        'address',
        'city',
        'state',
        'pincode',
        'status',
    ];
}
