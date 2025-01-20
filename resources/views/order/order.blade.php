@extends('layouts.app')

@section('content')
<div class="container mt-5">
    <h1>Order Details</h1>
    <div class="card">
        <div class="card-body">
            <h3>{{ $shoe->name }}</h3>
            <p>Size: {{ $orderData['shoe_size'] ?? 'Not Selected' }}</p>
            <p>Quantity: {{ $orderData['quantity'] }}</p>
            <p>Price: ${{ number_format($shoe->price, 2) }}</p>
            <p>Subtotal: ${{ number_format($orderData['sub_total_amount'], 2) }}</p>
            <p>Tax: ${{ number_format($orderData['total_tax'], 2) }}</p>
            <p>Total: ${{ number_format($orderData['grand_total_amount'], 2) }}</p>
        </div>
        <div class="mt-4 text-center">
            <a href="{{ route('front.customer_data') }}" class="btn btn-primary">Proceed to Customer Data</a>
            <a href="{{ route('front.index') }}" class="btn btn-secondary">Cancel</a>
        </div>
    </div>
</div>
@endsection
