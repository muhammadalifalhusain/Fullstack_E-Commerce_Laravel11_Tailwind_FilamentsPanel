{{-- resources/views/order/payment.blade.php --}}
@extends('layouts.app')

@section('content')
<div class="container mx-auto px-4 py-8">
    <h1 class="text-3xl font-semibold text-center text-gray-900 mb-8">Payment</h1>

    {{-- Rincian Pembelian --}}
    <div class="flex justify-center">
        <img src="{{ asset('storage/' . $shoe->photos->first()->photo) }}" class="w-1/2 object-cover" alt="{{ $shoe->name }}">
    </div>

    <div class="mt-6 text-center">
        <p class="text-xl text-gray-900"><span class="font-semibold">Rp {{ number_format($orderData['grand_total_amount'], 0, ',', '.') }}</span></p>
    </div>

    {{-- Form Pembayaran --}}
    <div class="mt-6">
        <form action="{{ route('front.payment_confirm') }}" method="POST" enctype="multipart/form-data">
            @csrf
            <div class="mb-4">
                <label for="proof" class="text-gray-700">Upload Proof of Payment</label>
                <input type="file" name="proof" id="proof" class="w-full px-4 py-2 border rounded-md" required>
            </div>

            <button type="submit" class="bg-teal-500 inline-block text-white py-2 px-4 rounded-md hover:bg-gray-700 transition duration-300">Confirm Payment</button>
        </form>
    </div>
</div>
@endsection
