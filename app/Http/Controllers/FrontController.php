<?php

namespace App\Http\Controllers;

use App\Models\Category;
use App\Models\Shoe;
use App\Services\FrontService;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Http;

class FrontController extends Controller
{
    protected $frontService;

    public function __construct(FrontService $frontService)
    {
        $this->frontService = $frontService;
    }

    public function index(Request $request)
    {
        // Ngambil Input Form Input
        $search = $request->input('search');

        // Ambil data sepatu dari database
        $shoes = Shoe::with('category')
            ->when($search, function ($query) use ($search) {
                $query->where('name', 'like', "%{$search}%")
                      ->orWhereHas('category', function ($query) use ($search) {
                          $query->where('name', 'like', "%{$search}%");
                      });
            })
            ->get();

        // Ambil data sepatu populer dari database (gunakan model untuk filter ini)
        $topShoes = Shoe::with('category')
            ->where('is_popular', true) // Atau sesuaikan kondisi dengan data sepatu populer di database
            ->orderBy('price', 'desc') // Atau sesuai dengan logika pengurutan yang diinginkan
            ->take(10) // Ambil 10 sepatu terpopuler
            ->get();

        return view('front.index', [
            'shoes' => $shoes,
            'topShoes' => $topShoes,
        ]);
    }

    public function details(Shoe $shoe)
    {
        // Ganti dengan logika rekomendasi berbasis database jika perlu
        // Misalnya, bisa berdasarkan kategori yang sama atau berdasarkan popularitas
        $recommendations = Shoe::with('category')
            ->where('category_id', $shoe->category_id)
            ->where('id', '!=', $shoe->id) // Jangan tampilkan sepatu yang sama
            ->take(5)
            ->get();

        return view('front.details', compact('shoe', 'recommendations'));
    }

    public function category(Category $category)
    {
        return view('front.category', compact('category'));
    }

    public function contact()
    {
        return view('front.contact'); // Pastikan file contact.blade.php ada di resources/views/front
    }
}
