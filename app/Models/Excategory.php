<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Excategory extends Model
{
    use HasFactory;
    protected $fillable = ['name'];

    public function category()
    {
        return $this->HasMany(Exsubcategory::class, 'cat_id', 'id');
    }

    public function expenses()
    {
        return $this->HasMany(Expenses::class, 'catId', 'id');
    }
}
