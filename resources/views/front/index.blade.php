@extends('layouts.app')

@section('content')
<div class="container mx-auto px-4 py-8">
    <h1 class="text-3xl font-semibold text-center text-gray-800 mb-8">Daftar Sepatu Populer</h1>
    <div class="grid grid-cols-1 sm:grid-cols-2 md:grid-cols-3 lg:grid-cols-4 gap-6">
        @foreach ($shoes as $shoe)
            <x-shoe-card :shoe="$shoe" />
        @endforeach
    </div>
</div>
@endsection
