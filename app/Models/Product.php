<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    use HasFactory;

    protected $fillable = [
        'name',
        'category_id',
        'subcategory_id',
        'price',
        'stock',
        'description',
        'image',
        'availability',
        'size',
        'ingredients',
        'manufactured',
        'expired',
    ];

    public function category()
    {
        return $this->belongsTo(Category::class, 'category_id', 'id');
    }

    public function subcategory()
    {
        return $this->belongsTo(Subcategory::class, 'subcategory_id', 'id');
    }

    public function cart()
    {
        return $this->hasMany(Cart::class, 'product_id', 'id');
    }

    public function stock()
    {
        return $this->belongsTo(Stock::class, 'product_id', 'id');
    }

    public function purchase()
    {
        return $this->hasMany(Purchase::class, 'product_id', 'id');
    }

}
