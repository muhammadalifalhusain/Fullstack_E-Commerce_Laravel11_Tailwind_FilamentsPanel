<div class="bg-white rounded-lg shadow-lg overflow-hidden">
    @if ($shoe->photos->isNotEmpty())
        <img src="{{ asset('storage/' . $shoe->photos->first()->photo) }}" class="w-full h-64 object-cover" alt="{{ $shoe->name }}">
    @else
        <img src="{{ asset('images/default-shoe.jpg') }}" class="w-full h-64 object-cover" alt="No Image Available">
    @endif
    <div class="p-4">
        <h5 class="text-xl font-medium text-gray-800">{{ $shoe->name }}</h5>
        <p class="text-gray-600 mt-2">Harga: <span class="font-semibold">Rp {{ number_format($shoe->price, 0, ',', '.') }}</span></p>
        <a href="{{ route('front.details', $shoe->slug) }}" class="mt-4 inline-block bg-gray-500 text-white py-2 px-4 rounded-md hover:bg-blue-600 transition">Lihat Detail</a>
    </div>
</div>
