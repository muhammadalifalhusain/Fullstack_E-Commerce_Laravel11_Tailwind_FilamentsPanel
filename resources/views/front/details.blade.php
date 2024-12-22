@extends('layouts.app')

@section('content')
<div class="container mx-auto px-4 py-8">
    <h1 class="text-3xl font-semibold text-center text-gray-800 mb-8">{{ $shoe->name }}</h1>
    <div class="flex justify-center">
        @if ($shoe->photos->isNotEmpty())
            <img src="{{ asset('storage/' . $shoe->photos->first()->photo) }}" class="w-1/2 object-cover" alt="{{ $shoe->name }}">
        @else
            <img src="{{ asset('images/default-shoe.jpg') }}" class="w-1/2 object-cover" alt="No Image Available">
        @endif
    </div>
    <div class="mt-6 text-center">
        <p class="text-xl text-gray-700">Harga: <span class="font-semibold">Rp {{ number_format($shoe->price, 0, ',', '.') }}</span></p>
        <p class="mt-4 text-gray-600">{{ $shoe->description }}</p>
    </div>
    <div class="mt-6 text-center">
        <a href="{{ route('front.index') }}" class="inline-block bg-gray-700 text-white py-2 px-4 rounded-md hover:bg-gray-800 transition">Kembali ke Daftar Sepatu</a>
    </div>
</div>
@endsection
