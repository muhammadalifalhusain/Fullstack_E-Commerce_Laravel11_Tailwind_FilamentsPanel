<div class="bg-white rounded-lg shadow-lg overflow-hidden">
    <!-- Menampilkan gambar thumbnail sepatu dengan link ke halaman detail -->
    <a href="{{ route('front.details', $shoe->slug) }}">
        <img src="{{ asset('storage/' . $shoe->thumbnail) }}" class="w-full h-64 object-cover" alt="{{ $shoe->name }}">
    </a>
    
    <div class="p-4">
        <h5 class="text-xl font-medium text-gray-800">{{ $shoe->name }}</h5>
        
        <!-- Menampilkan harga dan kategori sepatu dalam satu baris -->
        <div class="flex items-center justify-between mt-2">
            <p class="text-gray-600 font-semibold">{{ number_format($shoe->price, 0, ',', '.') }}</p>
            <p class="text-gray-500 text-sm"> <span class="font-semibold">{{ $shoe->category->name }}</span></p>
        </div>
    </div>
</div>
