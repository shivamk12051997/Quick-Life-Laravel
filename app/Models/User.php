<?php

namespace App\Models;

// use Illuminate\Contracts\Auth\MustVerifyEmail;
use Laravel\Sanctum\HasApiTokens;
use Spatie\MediaLibrary\HasMedia;
use Illuminate\Notifications\Notifiable;
use Spatie\MediaLibrary\InteractsWithMedia;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Spatie\MediaLibrary\MediaCollections\Models\Media;
use Illuminate\Foundation\Auth\User as Authenticatable;


class User extends Authenticatable implements HasMedia
{
    /** @use HasFactory<\Database\Factories\UserFactory> */
    use HasApiTokens, HasFactory, Notifiable, InteractsWithMedia;

    protected $appends = ['drug_license', 'gst_certificate', 'shop_establishment_certificate','pan_card','aadhaar_card','bank_account_details',
        'storefront_photograph','owner_photograph'];

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
    public function getShopEstablishmentCertificateAttribute()
    {
        $media = $this->getFirstMedia('shop_establishment_certificate');
        return $media ? $media->getUrl() : null;
    }
    public function getPanCardAttribute()
    {
        $media = $this->getFirstMedia('pan_card');
        return $media ? $media->getUrl() : null;
    }
    public function getAadhaarCardAttribute()
    {
        $media = $this->getFirstMedia('aadhaar_card');
        return $media ? $media->getUrl() : null;
    }
    public function getBankAccountDetailsAttribute()
    {
        $media = $this->getFirstMedia('bank_account_details');
        return $media ? $media->getUrl() : null;
    }
    public function getStorefrontPhotographAttribute()
    {
        $media = $this->getFirstMedia('storefront_photograph');
        return $media ? $media->getUrl() : null;
    }
    public function getOwnerPhotographAttribute()
    {
        $media = $this->getFirstMedia('owner_photograph');
        return $media ? $media->getUrl() : null;
    }
    

    /**
     * The attributes that are mass assignable.
     *
     * @var list<string>
     */
    protected $fillable = [
        'created_by_id',
        'name',
        'email',
        'phone',
        'password',
        'show_password',
        'owner_name',
        'address',
        'city',
        'state',
        'pincode',
        'status',
        'status_remarks',
    ];

    /**
     * The attributes that should be hidden for serialization.
     *
     * @var list<string>
     */
    protected $hidden = [
        'password',
        'remember_token',
    ];

    /**
     * Get the attributes that should be cast.
     *
     * @return array<string, string>
     */
    protected function casts(): array
    {
        return [
            'email_verified_at' => 'datetime',
            'password' => 'hashed',
        ];
    }
}
