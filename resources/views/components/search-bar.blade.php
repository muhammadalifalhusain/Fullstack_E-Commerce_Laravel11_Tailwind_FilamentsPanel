<div class="mb-6">
    <form action="{{ $action }}" method="GET" class="flex flex-col sm:flex-row items-center gap-4">
        <!-- Input Search -->
        <input 
            type="text" 
            name="search" 
            value="{{ request('search') }}" 
            placeholder="{{ $placeholder ?? 'Search...' }}" 
            class="w-full sm:w-1/2 p-2 border border-gray-300 rounded-md focus:outline-none focus:ring-2 focus:ring-gray-400"
        >
        
        <!-- Submit Button -->
        <button 
            type="submit" 
            class="p-2 bg-gray-700 text-white rounded-md hover:bg-gray-800 transition"
        >
            Search
        </button>
    </form>
</div>
