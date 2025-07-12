<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

use App\Models\Category;
use App\Models\Subcategory;

class SubcategorySeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $subcategories = [
            'Bread' => ['White Bread', 'Brown Bread', 'Multigrain Bread', 'Buns & Rolls'],
            'Cakes' => ['Birthday Cake', 'Wedding Cake', 'Cupcakes', 'Cheese Cake', 'Chocolate Cake'],
            'Cookies & Biscuits' => ['Chocolate Chip Cookies', 'Butter Cookies', 'Oatmeal Cookies', 'Digestive Biscuits'],
            'Pastry' => ['Cream Pastry', 'Fruit Pastry', 'Black Forest Pastry', 'Éclair'],
            'Snacks' => ['Patties', 'Pies', 'Sandwiches', 'Chicken Roll', 'Samosa'],
            'Sweets' => ['Donuts', 'Brownies', 'Muffins', 'Gulab Jamun'],
            'Dairy Items' => ['Fresh Cream', 'Butter', 'Cheese', 'Milk Shake'],
            'Beverages' => ['Tea', 'Coffee', 'Juice', 'Soft Drinks'],
        ];

        foreach ($subcategories as $categoryName => $subs) {
            $category = Category::where('name', $categoryName)->first();

            if ($category) {
                foreach ($subs as $sub) {
                    Subcategory::create([
                        'name' => $sub,
                        'category_id' => $category->id,
                    ]);
                }
            }
        }
    }
}
