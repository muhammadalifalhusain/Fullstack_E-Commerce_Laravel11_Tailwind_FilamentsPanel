<div class="bg-gray-400 shadow-md">
    <nav class="container mx-auto p-4 flex justify-between items-center">
        <!-- Logo -->
        <a href="{{ route('front.index') }}" class="text-black text-2xl font-semibold">DATAMINING Store</a>
        
        <!-- Menu -->
        <ul class="flex space-x-6">
            <li>
                <a href="{{ route('front.index') }}" 
                   class="text-black font-semibold hover:text-white hover:bg-gray-500 px-4 py-2 rounded-md transition-all">
                   Home
                </a>
            </li>
            <li>
                <a href="#" 
                   class="text-black font-semibold hover:text-white hover:bg-gray-500 px-4 py-2 rounded-md transition-all">
                   Products
                </a>
            </li>
            <li>
                <a href="#" 
                   class="text-black font-semibold hover:text-white hover:bg-gray-500 px-4 py-2 rounded-md transition-all">
                   About
                </a>
            </li>
<li>
    <a href="{{ route('contact.index') }}" 
       class="text-black font-semibold hover:text-white hover:bg-gray-500 px-4 py-2 rounded-md transition-all">
       Contact
    </a>
</li>

        </ul>
    </nav>
</div>
