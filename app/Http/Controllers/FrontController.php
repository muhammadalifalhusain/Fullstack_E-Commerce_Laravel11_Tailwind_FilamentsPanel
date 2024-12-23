<?php

namespace App\Http\Controllers;

use App\Models\Category;
use App\Models\Shoe;
use App\Services\FrontService;
use Illuminate\Http\Request;

class FrontController extends Controller
{
    //
    protected $frontService;
    public function __construct(FrontService $frontService)
    {
        $this->frontService = $frontService;
    }

    public function index(Request $request)
{
    // Ngambil Input Form Input
    $search = $request->input('search');

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
    ]);
}


    public function details(Shoe $shoe)
    {
        
        
        return view('front.details', compact('shoe'));
    }

    public function category(Category $category){
        return view('front.category', compact('category'));
    }
}
