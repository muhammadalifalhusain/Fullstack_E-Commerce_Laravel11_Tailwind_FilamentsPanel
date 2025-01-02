@extends('layouts.app')

@section('css-custom')
@endsection

@section('content')
<div class="container mx-auto px-4 py-8">
    <h1 class="text-3xl font-semibold text-center text-gray-600 mb-8">Affordable Choices with Great Quality</h1>
    <swiper-container class="mySwiper" pagination="true" pagination-clickable="true" slides-per-view="4" space-between="30"
        centered-slides="false">
        @forelse ($topShoes as $shoe)
            <swiper-slide class="mb-4">
                <div class="bg-white rounded-lg shadow-lg overflow-hidden">
                    <a href="{{ route('front.details', $shoe['slug']) }}">
                        <img src="{{ asset('storage/' . $shoe['thumbnail']) }}" class="w-full h-64 object-cover"
                            alt="{{ $shoe['name'] }}">
                    </a>
                    <div class="p-4">
                        <h5 class="text-xl font-medium text-gray-800">{{ $shoe['name'] }}</h5>
                        <div class="flex items-center justify-between mt-2">
                            <p class="text-gray-600 font-semibold">Rp {{ number_format($shoe['price'], 0, ',', '.') }}</p>
                            <p class="text-gray-500 text-sm">{{ $shoe['category_name'] }}</p>
                        </div>
                    </div>
                </div>
            </swiper-slide>
        @empty
            <p class="text-center col-span-full text-gray-500">No products found.</p>
        @endforelse
    </swiper-container>
</div>

    <div class="container mx-auto px-4 py-8">
        <h1 class="text-3xl font-semibold text-center text-gray-600 mb-8">Our Product Collection</h1>
        <!-- Grid Product -->
        <div class="grid grid-cols-1 sm:grid-cols-2 md:grid-cols-3 lg:grid-cols-4 gap-6">
            @forelse ($shoes as $shoe)
                <div class="bg-white rounded-lg shadow-lg overflow-hidden">
                    <a href="{{ route('front.details', $shoe->slug) }}">
                        <img src="{{ asset('storage/' . $shoe->thumbnail) }}" class="w-full h-64 object-cover"
                            alt="{{ $shoe->name }}">
                    </a>
                    <div class="p-4">
                        <h5 class="text-xl font-medium text-gray-800">{{ $shoe->name }}</h5>
                        <div class="flex items-center justify-between mt-2">
                            <p class="text-gray-600 font-semibold">Rp {{ number_format($shoe->price, 0, ',', '.') }}</p>
                            <p class="text-gray-500 text-sm">{{ $shoe->category->name }}</p>
                        </div>
                    </div>
                </div>
            @empty
                <p class="text-center col-span-full text-gray-500">No products found.</p>
            @endforelse
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-element-bundle.min.js"></script>
@endsection
