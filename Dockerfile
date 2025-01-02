# Menggunakan base image resmi PHP dengan Composer
FROM php:8.2-fpm

# Install dependencies sistem dan ekstensi PHP
RUN apt-get update && apt-get install -y \
    git \
    curl \
    unzip \
    libpng-dev \
    libonig-dev \
    libxml2-dev \
    libzip-dev \
    libicu-dev \
    && docker-php-ext-install \
    pdo_mysql \
    mbstring \
    exif \
    pcntl \
    bcmath \
    gd \
    zip \
    intl \
    && docker-php-source delete \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

# Install Composer
COPY --from=composer:2.6 /usr/bin/composer /usr/bin/composer

# Set environment variable to allow Composer as superuser
ENV COMPOSER_ALLOW_SUPERUSER=1

# Set working directory
WORKDIR /var/www/html

# Copy project files
COPY . /var/www/html

# Install dependencies aplikasi Laravel
RUN composer install --optimize-autoloader --no-dev

# Set permissions untuk Laravel
RUN chown -R www-data:www-data /var/www/html/storage /var/www/html/bootstrap/cache

# Expose port untuk Laravel
EXPOSE 8000

# Jalankan aplikasi Laravel
CMD ["php", "artisan", "serve", "--host=0.0.0.0", "--port=8000"]