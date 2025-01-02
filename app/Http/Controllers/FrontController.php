<?php

namespace App\Http\Controllers;

use App\Models\Category;
use App\Models\Shoe;
use App\Services\FrontService;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Http;

class FrontController extends Controller
{
    private $ApiUrl = "http://127.0.0.1:5000/";
    protected $frontService;
    public function __construct(FrontService $frontService)
    {
        $this->frontService = $frontService;
    }

    public function index(Request $request)
{
    // Ngambil Input Form Input
    $search = $request->input('search');
    $api = $this->ApiUrl . 'top-shoes';

    $response = Http::get($api);
    $topShoes = $response->json()['top_shoes'];
    // Logic searcing berdasarkan nama atau kataegori
    $shoes = Shoe::with('category')
        ->when($search, function ($query) use ($search) {
            $query->where('name', 'like', "%{$search}%")
                  ->orWhereHas('category', function ($query) use ($search) {
                      $query->where('name', 'like', "%{$search}%");
                  });
        })
        ->get();

    return view('front.index', [
        'shoes' => $shoes,
        'topShoes' => $topShoes,
    ]);
}


    public function details(Shoe $shoe)
    {
        // URL backend Flask untuk mendapatkan rekomendasi
    $api = $this->ApiUrl . 'recommend';

    // Kirimkan request POST ke backend Flask dengan ID produk
    $response = Http::post($api, [
        'id' => $shoe->id, // Mengirimkan ID produk saat ini
    ]);

    // Ambil data rekomendasi dari respons Flask
    $recommendations = $response->successful() 
        ? $response->json()['recommendations'] 
        : [];

        return view('front.details', compact('shoe','recommendations'));
    }

    public function category(Category $category){
        return view('front.category', compact('category'));
    }

    public function contact()
    {
        return view('front.contact'); // Pastikan file contact.blade.php ada di resources/views/front
    }
}
