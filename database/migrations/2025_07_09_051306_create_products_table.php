<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('products', function (Blueprint $table) {
            $table->id();
            $table->string('name'); 
            $table->foreignId('category_id')->constrained()->onDelete('restrict'); 
            $table->foreignId('subcategory_id')->constrained()->onDelete('restrict');
            $table->integer('price'); 
            $table->integer('stock'); 
            $table->text('description')->nullable(); 
            $table->string('image')->nullable(); 
            $table->boolean('availability')->default(1); // 1 = Available, 0 = Not
            $table->string('size')->nullable(); 
            $table->string('ingredients')->nullable(); 
            $table->date('manufactured')->nullable(); 
            $table->date('expired')->nullable(); 
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('products');
    }
};
