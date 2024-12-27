<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Ramsey\Uuid\Uuid;

class CommonKeyCode extends Model
{
    use HasFactory;

    protected $fillable = [
        'id',
        'org_id',
        'current_index',
        'object_type',
    ];

    protected static function boot(): void
    {
        parent::boot();

        static::creating(function ($hotel) {
            $hotel->id = Uuid::uuid4()->toString();
        });
    }

    protected $keyType = 'string';  // Khóa chính là kiểu chuỗi
    public $incrementing = false;   // Tắt auto-increment
}
