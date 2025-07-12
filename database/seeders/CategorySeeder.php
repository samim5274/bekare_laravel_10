<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

use App\Models\Category;
use App\Models\Subcategory;

class CategorySeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $categories = [
            'Bread',
            'Cakes',
            'Cookies & Biscuits',
            'Pastry',
            'Snacks',
            'Sweets',
            'Dairy Items',
            'Beverages'
        ];

        foreach ($categories as $category) {
            Category::create(['name' => $category]);
        }
    }
}
