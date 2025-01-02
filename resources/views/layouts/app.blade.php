<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>My Shop</title>
    @vite('resources/css/app.css')
    @yield('css-custom')
    
</head>
<body class="bg-gray-50 flex flex-col min-h-screen">
    <x-navbar /> <!-- Navbar Component -->
    
    <main class="flex-grow"> <!-- Konten Utama -->
        @yield('content')
    </main>

    <x-footer /> <!-- Footer Component -->
    
    @yield('js-custom')
</body>
</html>
