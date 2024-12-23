@extends('layouts.app')

@section('content')
<div class="container mx-auto p-4">
    <div class="max-w-3xl mx-auto bg-white p-6 rounded-lg shadow-lg">
        <div class="flex items-center">
            <!-- Gambar Sepatu -->
            <div class="w-1/2 pr-4">
                <img src="{{ asset('storage/' . $shoe->thumbnail) }}" class="w-full h-96 object-cover rounded-lg" alt="{{ $shoe->name }}">
            </div>
            <!-- Detail Sepatu -->
            <div class="w-1/2">
                <h2 class="text-3xl font-semibold text-gray-800">{{ $shoe->name }}</h2>
                <p class="text-lg text-gray-600 mt-2"> <span class="font-semibold">Rp {{ number_format($shoe->price, 0, ',', '.') }}</span></p>
                <p class="text-gray-700 mt-4">{{ $shoe->about }}</p>
                
                <!-- Kategori Sepatu -->
                <p class="mt-4 text-gray-600 font-medium">
                    Kategori: <span class="font-bold">{{ $shoe->category->name ?? 'Tidak Diketahui' }}</span>
                </p>
                
                <!-- Tombol untuk membeli atau menambahkan ke keranjang -->
                <div class="mt-6">
                    <a href="{{ route('front.booking') }}" class="bg-blue-600 text-white py-2 px-4 rounded-md hover:bg-blue-700 transition duration-300">Pesan Sekarang</a>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
