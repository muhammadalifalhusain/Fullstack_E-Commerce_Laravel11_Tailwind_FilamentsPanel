# Menggunakan base image resmi PHP dengan Composer
FROM php:8.2-fpm

# Install dependencies untuk PHP dan Node.js
RUN apt-get update && apt-get install -y \
    git \
    curl \
    unzip \
    libpng-dev \
    libonig-dev \
    libxml2-dev \
    libzip-dev \
    && docker-php-ext-install pdo_mysql mbstring exif pcntl bcmath gd zip

# Install Composer
COPY --from=composer:2.6 /usr/bin/composer /usr/bin/composer

# Install Bun
RUN curl -fsSL https://bun.sh/install | bash
ENV PATH="/root/.bun/bin:$PATH"

# Set working directory
WORKDIR /var/www/html

# Copy project
COPY . /var/www/html

# Install dependencies aplikasi Laravel
RUN composer install --optimize-autoloader --no-dev

# Set permissions untuk Laravel
RUN chown -R www-data:www-data /var/www/html/storage /var/www/html/bootstrap/cache

# Expose port untuk Laravel dan Vite
EXPOSE 8000 5173

# Jalankan perintah default container
CMD ["sh", "-c", "php artisan serve --host=0.0.0.0 --port=8000 & bun install && bun run dev"]
