@extends('layouts.app')

@section('content')
<div class="container">
    <h1>Pesanan Anda</h1>
    <table class="table">
        <thead>
            <tr>
                <th>Nama Sepatu</th>
                <th>Jumlah</th>
                <th>Harga Total</th>
            </tr>
        </thead>
        <tbody>
            @foreach ($orders as $order)
                <tr>
                    <td>{{ $order->shoe->name }}</td>
                    <td>{{ $order->quantity }}</td>
                    <td>Rp {{ number_format($order->quantity * $order->shoe->price, 0, ',', '.') }}</td>
                </tr>
            @endforeach
        </tbody>
    </table>
    <a href="{{ route('front.customer_data') }}" class="btn btn-primary">Isi Data Pelanggan</a>
</div>
@endsection
