{{-- resources/views/order/order.blade.php --}}
@extends('layouts.app')

@section('content')
<div class="container mx-auto px-4 py-8">
    <h1 class="text-3xl font-semibold text-center text-gray-900 mb-8">Order Details</h1>

    {{-- Menampilkan Foto Produk --}}
    <div class="flex justify-center">
        <img src="{{ asset('storage/' . $shoe->photos->first()->photo) }}" class="w-1/2 object-cover" alt="{{ $shoe->name }}">
    </div>

    {{-- Detail Produk --}}
    <div class="mt-6 text-center">
        <p class="text-xl text-gray-900"><span class="font-semibold">Rp {{ number_format($shoe->price, 0, ',', '.') }}</span></p>
        <p class="mt-4 text-gray-900">{{ $shoe->about }}</p>
    </div>

    {{-- Form Pembayaran --}}
    <div class="mt-6 text-center">
        <form action="{{ route('front.customer_data') }}" method="POST">
            @csrf
            <div class="mb-4">
                <label for="phone" class="text-gray-700">Phone Number</label>
                <input type="text" name="phone" id="phone" class="w-full px-4 py-2 border rounded-md" required>
            </div>

            <div class="mb-4">
                <label for="address" class="text-gray-700">Address</label>
                <textarea name="address" id="address" class="w-full px-4 py-2 border rounded-md" required></textarea>
            </div>

            <div class="mb-4">
                <label for="city" class="text-gray-700">City</label>
                <input type="text" name="city" id="city" class="w-full px-4 py-2 border rounded-md" required>
            </div>

            <div class="mb-4">
                <label for="post_code" class="text-gray-700">Postal Code</label>
                <input type="text" name="post_code" id="post_code" class="w-full px-4 py-2 border rounded-md" required>
            </div>

            <button type="submit" class="bg-teal-500 inline-block text-white py-2 px-4 rounded-md hover:bg-gray-700 transition duration-300">Next</button>
        </form>
    </div>
</div>
@endsection
