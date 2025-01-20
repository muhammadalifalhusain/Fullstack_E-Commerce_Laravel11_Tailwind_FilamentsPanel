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
        Schema::table('brands', function (Blueprint $table) {
            // Tambahkan kolom hanya jika belum ada
            if (!Schema::hasColumn('brands', 'name')) {
                $table->string('name')->unique(); // Kolom name
            }
            if (!Schema::hasColumn('brands', 'slug')) {
                $table->string('slug')->unique(); // Kolom slug
            }
            if (!Schema::hasColumn('brands', 'logo')) {
                $table->string('logo')->nullable(); // Kolom logo (nullable)
            }
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('brands', function (Blueprint $table) {
            // Hapus kolom hanya jika kolom tersebut ada
            if (Schema::hasColumn('brands', 'name')) {
                $table->dropColumn('name');
            }
            if (Schema::hasColumn('brands', 'slug')) {
                $table->dropColumn('slug');
            }
            if (Schema::hasColumn('brands', 'logo')) {
                $table->dropColumn('logo');
            }
        });
    }
};
