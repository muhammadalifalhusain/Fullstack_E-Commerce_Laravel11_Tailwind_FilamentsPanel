@extends('layouts.app')

@section('content')
<div class="container">
    <h1>Daftar Sepatu Populer</h1>
    <div class="row">
        @foreach ($shoes as $shoe)
            <div class="col-md-4">
                <div class="card mb-3">
                    <img src="{{ $shoe->image_url }}" class="card-img-top" alt="{{ $shoe->name }}">
                    <div class="card-body">
                        <h5 class="card-title">{{ $shoe->name }}</h5>
                        <p class="card-text">Harga: Rp {{ number_format($shoe->price, 0, ',', '.') }}</p>
                        <a href="{{ route('front.details', $shoe->slug) }}" class="btn btn-primary">Lihat Detail</a>
                    </div>
                </div>
            </div>
        @endforeach
    </div>
</div>
@endsection
