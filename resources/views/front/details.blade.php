@extends('layouts.app')

@section('content')
<div class="container mx-auto px-4 py-8">
    <h1 class="text-3xl font-semibold text-center text-gray-900 mb-8">{{ $shoe->name }}</h1>
    
    <div class="flex justify-center">
        <!-- Menampilkan foto utama -->
        @if ($shoe->photos->isNotEmpty())
            <img id="main-photo" src="{{ asset('storage/' . $shoe->photos->first()->photo) }}" class="w-1/2 object-cover" alt="{{ $shoe->name }}">
        @else
            <img id="main-photo" src="{{ asset('images/default-shoe.jpg') }}" class="w-1/2 object-cover" alt="No Image Available">
        @endif
    </div>

    <!-- Galeri Foto -->
    <div class="mt-6 text-center">
        <h3 class="text-xl text-gray-400 mb-4">Details</h3>
        <div class="flex justify-center space-x-4">
            @foreach ($shoe->photos as $photo)
                <img src="{{ asset('storage/' . $photo->photo) }}" 
                     class="w-24 h-24 object-cover rounded-md border border-gray-200 hover:border-gray-400 transition cursor-pointer" 
                     alt="{{ $shoe->name }}" 
                     onmouseover="changeMainPhoto('{{ asset('storage/' . $photo->photo) }}')">
            @endforeach
        </div>
    </div>

    <div class="mt-6 text-center">
        <p class="text-xl text-gray-900"><span class="font-semibold">Rp {{ number_format($shoe->price, 0, ',', '.') }}</span></p>
        <p class="mt-4 text-gray-900">{{ $shoe->about }}</p>
    </div>

    <div class="mt-6 text-center">
        <a href="{{ route('front.index') }}" class="inline-block bg-gray-500 text-white py-2 px-4 rounded-md hover:bg-gray-800 transition">Kembali</a>
    </div>
</div>

<script>
    // Fungsi untuk mengganti gambar utama saat kursor diarahkan (hover) ke gambar mini
    function changeMainPhoto(photoUrl) {
        const mainPhoto = document.getElementById('main-photo');
        mainPhoto.src = photoUrl;
    }
</script>
@endsection
