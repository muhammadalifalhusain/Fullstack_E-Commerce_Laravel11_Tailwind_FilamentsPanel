<?php

namespace App\Services;

use App\Models\Category;
use App\Models\Shoe;

class FrontService
{
    /**
     * Mengambil data untuk halaman depan.
     *
     * @return array
     */
    public function getFrontPageData(): array
    {
        // Misalnya, ambil sepatu populer dan kategori yang tersedia
        $shoes = Shoe::with('category')->latest()->take(10)->get();
        $categories = Category::all();

        return [
            'shoes' => $shoes,
            'categories' => $categories,
        ];
    }

    /**
     * Mengambil data sepatu berdasarkan kategori.
     *
     * @param Category $category
     * @return \Illuminate\Database\Eloquent\Collection
     */
    public function getShoesByCategory(Category $category)
    {
        return $category->shoes()->get();
    }

    /**
     * Mengambil detail sepatu.
     *
     * @param Shoe $shoe
     * @return Shoe
     */
    public function getShoeDetails(Shoe $shoe): Shoe
    {
        return $shoe->load('category'); // Muat data kategori juga
    }
}
