{{-- resources/views/order/finished.blade.php --}}
@extends('layouts.app')

@section('content')
<div class="container mx-auto px-4 py-8">
    <h1 class="text-3xl font-semibold text-center text-gray-900 mb-8">Order Finished</h1>

    <div class="text-center">
        <p>Your order has been successfully placed with Transaction ID: {{ $productTransaction->booking_trx_id }}</p>
        <p>Status: {{ $productTransaction->is_paid ? 'Paid' : 'Pending Payment' }}</p>

        <a href="{{ route('front.index') }}" class="bg-teal-500 inline-block text-white py-2 px-4 rounded-md hover:bg-gray-700 transition duration-300">Back to Home</a>
    </div>
</div>
@endsection
