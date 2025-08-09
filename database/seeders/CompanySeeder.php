<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

use App\Models\Company;

class CompanySeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        Company::create([
            'name'    => 'Abir Bekare & Foods',
            'address' => 'House #02, Road #11, Sector #6, Uttara, Dhaka-1230',
            'email'   => 'info@example.com',
            'phone'   => '01762164746',
            'website' => 'https://example.com',
        ]);
    }
}
