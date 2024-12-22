@extends('layouts.app')

@section('content')
<div class="container">
    <h1>{{ $shoe->name }}</h1>
    <img src="{{ $shoe->image_url }}" alt="{{ $shoe->name }}" class="img-fluid mb-3">
    <p>Harga: Rp {{ number_format($shoe->price, 0, ',', '.') }}</p>
    <p>Kategori: {{ $shoe->category->name }}</p>
    <p>{{ $shoe->description }}</p>

    <form action="{{ route('front.save_order', $shoe->slug) }}" method="POST">
        @csrf
        <label for="quantity">Jumlah:</label>
        <input type="number" id="quantity" name="quantity" min="1" value="1" class="form-control mb-3">
        <button type="submit" class="btn btn-success">Pesan Sekarang</button>
    </form>
</div>
@endsection
