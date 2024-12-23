@extends('layouts.app')

@section('content')
<div class="container mx-auto px-4 py-12">
    <!-- Judul Halaman -->
    <h1 class="text-3xl font-semibold text-center text-gray-800 mb-8">Contact Us</h1>

    <div class="grid grid-cols-1 md:grid-cols-2 gap-8">
        <!-- Form Kontak -->
        <div class="bg-white p-8 rounded-lg shadow-lg">
            <h2 class="text-2xl font-semibold text-gray-800 mb-6">Get In Touch</h2>
            <form action="{{ route('contact.store') }}" method="POST">
    @csrf
    <div class="mb-4">
        <label for="name" class="block text-gray-700">Full Name</label>
        <input type="text" id="name" name="name" class="w-full p-3 border border-gray-300 rounded-md focus:outline-none focus:ring-2 focus:ring-gray-500" required>
    </div>
    <div class="mb-4">
        <label for="email" class="block text-gray-700">Email Address</label>
        <input type="email" id="email" name="email" class="w-full p-3 border border-gray-300 rounded-md focus:outline-none focus:ring-2 focus:ring-gray-500" required>
    </div>
    <div class="mb-4">
        <label for="message" class="block text-gray-700">Message</label>
        <textarea id="message" name="message" rows="4" class="w-full p-3 border border-gray-300 rounded-md focus:outline-none focus:ring-2 focus:ring-gray-500" required></textarea>
    </div>
    <button type="submit" class="w-full py-3 bg-gray-800 text-white rounded-md hover:bg-gray-700 transition-all">Send Message</button>
</form>
        </div>

        <!-- Peta Lokasi / Kontak Info -->
        <div class="bg-white p-8 rounded-lg shadow-lg">
            <h2 class="text-2xl font-semibold text-gray-800 mb-6">Our Location</h2>
            <div class="mb-6">
                <p class="text-gray-700 mb-2">Address: 1234 Street Name, City, Country</p>
                <p class="text-gray-700 mb-4">Phone: +1 234 567 890</p>
                <p class="text-gray-700 mb-4">Email: contact@alhusainstore.com</p>
            </div>

            <!-- Peta (Gunakan Google Maps Embed atau Peta lainnya) -->
            <div class="w-full h-64 bg-gray-200 rounded-md">
                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3153.4238255684536!2d144.95373531568264!3d-37.81362797975184!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6ad65d5c72f94abf%3A0x5045675218cd1f0!2sFlinders%20Street%20Station!5e0!3m2!1sen!2sus!4v1649796920641!5m2!1sen!2sus" width="100%" height="100%" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
            </div>
        </div>
    </div>
</div>
@endsection
