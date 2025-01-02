-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 02 Jan 2025 pada 11.18
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `toko`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `logo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `brands`
--

INSERT INTO `brands` (`id`, `created_at`, `updated_at`, `name`, `slug`, `logo`) VALUES
(1, '2024-12-20 09:33:15', '2024-12-20 09:33:15', 'Nike', 'nike', '01JFJEN1EH53WGZGQK1BE920V9.png'),
(2, '2024-12-20 09:36:20', '2024-12-20 09:36:20', 'Adidas', 'adidas', '01JFJETP1XCAXYKKQ8Y6WEBWTT.svg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('356a192b7913b04c54574d18c28d46e6395428ab', 'i:3;', 1734940536),
('356a192b7913b04c54574d18c28d46e6395428ab:timer', 'i:1734940536;', 1734940536),
('a17961fa74e9275d529f489537f179c05d50c2f3', 'i:1;', 1735801062),
('a17961fa74e9275d529f489537f179c05d50c2f3:timer', 'i:1735801062;', 1735801062),
('da4b9237bacccdf19c0760cab7aec4a8359010b0', 'i:5;', 1735805083),
('da4b9237bacccdf19c0760cab7aec4a8359010b0:timer', 'i:1735805083;', 1735805083);

-- --------------------------------------------------------

--
-- Struktur dari tabel `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `icon`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Lifestyle', 'lifestyle', '01JFJDEJTJ15AXP0XXPQYA2R3W.png', NULL, '2024-12-20 09:12:15', '2024-12-20 09:12:15'),
(2, 'Sandals', 'sandals', '01JFJF2PJHDS3AN3HKBH5P508H.png', NULL, '2024-12-20 09:38:11', '2024-12-20 09:40:42'),
(3, 'Running', 'running', '01JFS83Q2HTTWNWBTYKTF1HWBP.jpg', NULL, '2024-12-23 00:53:37', '2024-12-23 00:53:37');

-- --------------------------------------------------------

--
-- Struktur dari tabel `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `message`, `created_at`, `updated_at`) VALUES
(1, 'test', 'test@admin.com', 'test1', '2024-12-23 01:40:52', '2024-12-23 01:40:52');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_12_20_111000_create_categories_table', 2),
(5, '2024_12_20_111139_create_brands_table', 2),
(6, '2024_12_20_111150_create_shoes_table', 2),
(7, '2024_12_20_111214_create_shoe_photos_table', 2),
(8, '2024_12_20_111240_create_shoe_sizes_table', 2),
(9, '2024_12_20_111309_create_promo_codes_table', 2),
(10, '2024_12_20_111331_create_product_transactions_table', 2),
(11, '2024_12_20_163216_add_columns_to_brands_table', 3),
(12, '2024_12_21_110051_add_default_to_grand_total_amount_in_product_transactions', 4),
(13, '2024_12_23_082042_create_contacts_table', 5);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `product_transactions`
--

CREATE TABLE `product_transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `booking_trx_id` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `post_code` varchar(255) NOT NULL,
  `proof` varchar(255) NOT NULL,
  `shoe_size` bigint(20) UNSIGNED NOT NULL,
  `address` text NOT NULL,
  `quantity` bigint(20) UNSIGNED NOT NULL,
  `sub_total_amount` bigint(20) UNSIGNED NOT NULL,
  `grand_total_amount` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `discount_amount` bigint(20) UNSIGNED NOT NULL,
  `is_paid` tinyint(1) NOT NULL,
  `shoe_id` bigint(20) UNSIGNED NOT NULL,
  `promo_code_id` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `product_transactions`
--

INSERT INTO `product_transactions` (`id`, `name`, `phone`, `email`, `booking_trx_id`, `city`, `post_code`, `proof`, `shoe_size`, `address`, `quantity`, `sub_total_amount`, `grand_total_amount`, `discount_amount`, `is_paid`, `shoe_id`, `promo_code_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'AL husain', '0882006826730', 'Alhusainxxx@gmail.com', 'TRX001', 'Semarang', '78253', '01JFME5CC6K4131P9TXYPNAGH7.jpg', 1, 'Semarang, Jalan Kesehatan Raya', 2, 4000000, 0, 0, 1, 1, NULL, NULL, '2024-12-21 04:03:10', '2024-12-21 04:22:02'),
(2, 'AL husain', '0882006826730', 'Alhusainxxx@gmail.com', 'TRX002', 'Semarang', '78253', '01JFMES552M8WQPSKBPGRFMGXW.jpg', 3, 'Semarang, Jalan Kesehatan Raya', 1, 2000000, 0, 0, 0, 1, NULL, NULL, '2024-12-21 04:13:58', '2024-12-21 04:13:58');

-- --------------------------------------------------------

--
-- Struktur dari tabel `promo_codes`
--

CREATE TABLE `promo_codes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) NOT NULL,
  `discount_amount` bigint(20) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `promo_codes`
--

INSERT INTO `promo_codes` (`id`, `code`, `discount_amount`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'MELIMPAH', 75000, NULL, '2024-12-21 04:28:56', '2024-12-21 04:28:56'),
(2, 'GAJIAN', 100000, NULL, '2024-12-21 04:29:36', '2024-12-21 04:29:36');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('JYT3hIJIyMbnQ6Q8O08nsCl0yp8ZtNrUycHr1Kpi', NULL, '127.0.0.1', 'WhatsApp/2.2450.6 W', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicTdpT25QY0JxQ1ZMY1llaHZaQjJkQzhDR3NRV2J4RThGbGJxSmJWVCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDE6Imh0dHA6Ly8zZjZjLTE0OS0xMDgtMTgtMTI5Lm5ncm9rLWZyZWUuYXBwIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1735800910),
('riTuSXlp19E5OD6YMgxpSe3kgdzMinmVNheVh064', 2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiQkl3QTZITmlab2M3MG82cU1teVE4VmRDTUh2Y0xUMXhqa3BsRG9RMCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hZG1pbi9zaG9lcyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjI7czoxNzoicGFzc3dvcmRfaGFzaF93ZWIiO3M6NjA6IiQyeSQxMiR3TlhGb3V6Qlo0OXI5ckdYQmJleGhPdGdibGdYTTNlLzNGQ2YvTVpRTXZCcS5RQkdmOFdFcSI7czo4OiJmaWxhbWVudCI7YTowOnt9fQ==', 1735805113),
('UFC3ouBXm8b3h3PdSBH65GZuTTQT3qSDMROuqBm1', NULL, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64; rv:132.0) Gecko/20100101 Firefox/132.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZlJxUHM1V3psNGhrb29WZEZzN21mZm5Ya0NBak5GNVFzZzFpa2RpTyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDE6Imh0dHA6Ly8zZjZjLTE0OS0xMDgtMTgtMTI5Lm5ncm9rLWZyZWUuYXBwIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1735801200),
('XiB1QCa1XaLy60ub1QmHUU7JcnO6F9ZaJxPn5HrS', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiclVwQjk2bFdVZkJGOW5CZmtUWExDcDZ5RmhDc2VmUmhsaVc4YWpURyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTM6Imh0dHA6Ly8zZjZjLTE0OS0xMDgtMTgtMTI5Lm5ncm9rLWZyZWUuYXBwL2FkbWluL2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1735801182);

-- --------------------------------------------------------

--
-- Struktur dari tabel `shoes`
--

CREATE TABLE `shoes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `thumbnail` varchar(255) NOT NULL,
  `about` text NOT NULL,
  `price` bigint(20) UNSIGNED NOT NULL,
  `stock` smallint(5) UNSIGNED NOT NULL,
  `is_popular` tinyint(1) NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `brand_id` varchar(255) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `shoes`
--

INSERT INTO `shoes` (`id`, `name`, `slug`, `thumbnail`, `about`, `price`, `stock`, `is_popular`, `category_id`, `brand_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Nike AirForce Low', 'nike-airforce-low', '01JFJJHRW9ZBTZA84Y0EYCYNG7.png', 'Premium Leather gives these kicks a classic feel while canvas and exposed foam on the tongoue pair.', 2000000, 6, 1, 1, '1', NULL, '2024-12-20 10:41:22', '2024-12-20 10:41:22'),
(2, ' Air Max 1 x HUF', 'air-max-1-x-huf', '01JFPVB1X2FJF27ZZY54PKTJ2N.jpg', 'Happy anniversary! It\'s been 20 years since Nike first teamed up with Keith Hufnagel and his premier San Francisco-based sneaker and streetwear boutique. Luckily for us, Nike and HUF are at it again. This special edition pairs the Air Max 1\'s iconic mudguard with design details inspired by this partnership\'s original 2004 release. Hits of Pear and Flat Pewter pulse against the Anthracite and Medium Grey leather upper. Now, time to celebrate!', 2489000, 10, 1, 1, '1', NULL, '2024-12-22 02:31:57', '2024-12-22 02:31:57'),
(3, 'Nike Dunk Low SE', 'nike-dunk-low-se', '01JFPVKPQ349RZDSY69Z5JYREY.png', 'Wildly versatile, strikingly clean and oh-so classic. The Dunk Low mixes suede and leather for a flawless finish. It comes complete with a padded collar, lightweight cushioning and a gum sole. Lace up and bring the beach vibes with you.', 2099000, 15, 1, 1, '1', NULL, '2024-12-22 02:36:40', '2024-12-22 02:36:40'),
(4, 'Nike Air Max Cirro', 'nike-air-max-cirro', '01JFPY2VDAHE9721WRGRDQZA7J.png', 'Whether you\'re hitting the gym or headed to the shops, we\'ve created a perfect go-between that delivers quick style and incredible comfort. Large, visible Air in the heel is paired with a comfy foam footbed for a striking statement in comfort.', 659000, 5, 1, 2, '1', NULL, '2024-12-22 03:19:54', '2024-12-22 03:19:54'),
(5, 'Nike Cortez Leather', 'nike-cortez-leather', '01JFPZ3HKPGGAN1A90MVGDSXTB.png', 'You spoke. We listened. Based on your feedback, we\'ve revamped the original Cortez while maintaining the retro appeal you know and love. This leather version has a wider toe area and firmer side panels, so you can comfortably wear them day in and day out without any warping. And it\'s sporting one of our most sought-after colourways for a timeless look that\'s easy to style. Cortez fans—this one\'s for you.', 1729000, 7, 1, 1, '1', NULL, '2024-12-22 03:37:45', '2024-12-22 03:37:45'),
(6, 'Nike Offcourt EasyOn', 'nike-offcourt-easyon', '01JFPZ90YNQP5ANQEEP6XD7TPF.png', 'We worked with disabled athletes to create an adaptable slide that meets your specific needs. It features a heel strap that\'s fully removable, making it easier to slip on and off. When it comes to comfort and support, we\'ve got you covered with a padded top strap, contoured footbed and soft cushioning. The Offcourt slide is a great option for a prosthetic—or anyone who wants a quicker way to get going.', 609000, 5, 1, 2, '1', NULL, '2024-12-22 03:40:45', '2024-12-22 03:40:45'),
(7, 'Adidas UltraBoost5', 'adidas-ultraboost5', '01JFS87PAZPPRARZF9VH849R2C.jpg', 'Inovasi untuk bantalan, kenyamanan yang lebih baik, dan bobot yang lebih ringan untuk pengalaman lari yang berbeda, Ultraboost 5 hadir untuk memaksimalkan energi larimu. Midsole sepatu ini dibuat dengan Light BOOST, sistem bantalan dengan pengembalian energi tertinggi kami. Ultraboost 5 juga dilengkapi topangan di bagian tumit eksternal yang dibuat sesuai anatomi kaki untuk memberikan topangan optimal di bagian yang diperlukan.', 3000000, 5, 1, 3, '2', NULL, '2024-12-23 00:55:47', '2024-12-23 00:55:47'),
(8, 'Light British Tan and Pinksicle', 'light-british-tan-and-pinksicle', '01JGJX9M18B7GGHYWKBQACX9DQ.webp', 'We\'re serving up the \'77 sensation with a new look. The throwback LD-1000 puts its dramatically flared heel on display with triple the flavour—real and synthetic leather merge with airy textiles to recreate the old-school look you love—in a Neapolitan-inspired colourway that sweetens the look with Light British Tan, Light Bone and Pinksicle. And the iconic Waffle outsole? It wouldn\'t be an LD-1000 without it. That\'s the great thing about Neapolitan: you can have it all, in every step.', 1549000, 5, 0, 1, '1', NULL, '2025-01-02 00:04:51', '2025-01-02 00:04:51'),
(9, 'Nike C1TY', 'nike-c1ty', '01JGJXCEFD1C0YEYFVG7KBHC32.webp', 'Nike C1TY is engineered to overcome anything the city throws your way. A mesh upper keeps the fit breathable, while the reinforced sides and toe box help protect your feet from the elements. Each colourway is inspired by the spirit of city life—giving street style a whole new meaning.', 1549000, 4, 0, 1, '1', NULL, '2025-01-02 00:06:24', '2025-01-02 00:06:24'),
(10, 'Nike Calm', 'nike-calm', '01JGJXG3ZA3TERMMXYSECZRTE2.webp', 'Enjoy a calm, comfortable experience—wherever your day off takes you. Made from soft yet supportive foam, the minimal design makes these mules easy to style with or without socks. And the heel strap is both adjustable and removable to give you a personalised fit.', 1069000, 4, 1, 2, '1', NULL, '2025-01-02 00:08:24', '2025-01-02 00:08:24'),
(11, 'Nike Air More Uptempo', 'nike-air-more-uptempo', '01JGJXK0NXP051WG62KJ0YEXCW.webp', 'Your favourite hoops look gets transformed into slides you can easily slip on and off. Keeping the graffiti-styled \"AIR\" graphics you love from the original, the Air More Uptempo combines a plush strap, airy perforations and soft cushioning—making it a perfect choice for courtside, beachside and beyond.', 1399000, 5, 1, 2, '1', NULL, '2025-01-02 00:09:59', '2025-01-02 00:09:59'),
(12, 'Nike Vista', 'nike-vista', '01JGJXP7XD38A449F1XNX1KH2X.webp', 'With all of the necessary elements you need for a day out (like plush padding and easy-to-style colours), the Nike Vista delivers on less is more. Lightweight, airy and supportive, it lets you bridge city living and nature with the pull of a strap.', 759000, 5, 1, 2, '1', NULL, '2025-01-02 00:11:45', '2025-01-02 00:11:45'),
(13, 'Nike Air More Uptempo', 'nike-air-more-uptempo', '01JGJXSH76PG6ZTQVQ7VD0T930.webp', 'Keeping the exaggerated, graffiti-styled \"AIR\" graphics and the full-length Nike Air cushioning you love from the original, your favourite hoops look gets transformed into an easy on/easy off slide. Pairing \'90s style with summertime comfort, its plush strap, airy perforations and soft foam make it a perfect choice—courtside, beachside and anywhere in between.', 1399000, 3, 1, 2, '1', NULL, '2025-01-02 00:13:32', '2025-01-02 00:13:32'),
(14, 'Nike Pegasus 41', 'nike-pegasus-41', '01JGJXWA36HHP7Y67DJJ5KPQVF.webp', 'Responsive cushioning in the Pegasus provides an energised ride for everyday road running. Experience lighter-weight energy return with dual Air Zoom units and a ReactX foam midsole. Plus, improved engineered mesh on the upper decreases weight and increases breathability.', 2099000, 5, 1, 3, '1', NULL, '2025-01-02 00:15:03', '2025-01-02 00:15:03'),
(15, 'Nike Killshot 2', 'nike-killshot-2', '01JGJXYFE9317MVNWPPK8J7RNQ.webp', 'Inspired by our original tennis shoe, the Killshot 2 gets refreshed with soft suede and smooth leather. A gum rubber outsole adds a retro touch that is as durable as it is comfortable.', 1499000, 5, 1, 1, '1', NULL, '2025-01-02 00:16:14', '2025-01-02 00:16:14'),
(16, 'Nike Dunk Low Retro SE', 'nike-dunk-low-retro-se', '01JGJY0DP6PJ7Y8KY9HVK8WVQX.webp', 'You can always count on a classic. The Dunk Low Retro pairs a monochromatic look with premium materials and plush padding for game-changing comfort that lasts. The possibilities are endless—how will you wear your Dunks?', 1909000, 7, 0, 1, '1', NULL, '2025-01-02 00:17:18', '2025-01-02 00:17:18'),
(17, 'Nike Shox R4', 'nike-shox-r4', '01JGJY2SVHF3ZC5ZFKYESJC2M0.webp', 'A recrafted version of the early 2000s icon, the Nike Shox R4 replicates the original with its futuristic design lines and performance-like cushioning. Nike Shox columns in the heel distribute weight to maximise comfort while providing a bold look on the streets.', 2379000, 4, 1, 1, '1', NULL, '2025-01-02 00:18:36', '2025-01-02 00:18:36'),
(18, 'Nike Motiva', 'nike-motiva', '01JGJY52YVA1FQJSWSKFYQKMV9.webp', 'Designed for walking in ultimate comfort, the Nike Motiva provides our highest level of cushioning. A tall foam stack is combined with our Comfortgroove innovation on the outsole to absorb the bumps along the way. And its exaggerated rocker helps propel you forwards.', 1729000, 3, 1, 1, '1', NULL, '2025-01-02 00:19:51', '2025-01-02 00:19:51'),
(19, 'G.T. Hustle Academy EP', 'gt-hustle-academy-ep', '01JGJY7X9SW15MTAGJ9XTESEET.webp', 'The G.T. Hustle Academy helps keep you fast, wherever your next game is. A full Flyknit upper works with responsive foams to help you feel fresh on the court. With its extra-durable rubber outsole, this version gives you traction for outdoor courts.', 1399000, 4, 0, 3, '1', NULL, '2025-01-02 00:21:24', '2025-01-02 00:21:24'),
(20, 'Nike Zoom Fly 6 Premium', 'nike-zoom-fly-6-premium', '01JGJYAEA0YGYB9EMFYC2AS4CX.webp', 'The Zoom Fly 6 is with you every step of your run. Lighter than the Zoom Fly 5 and stocked with ZoomX foam, it provides responsive energy return with every stride while the carbon-fibre plate helps propel you further.', 2849000, 6, 1, 3, '1', NULL, '2025-01-02 00:22:47', '2025-01-02 00:22:47'),
(21, 'Nike Court Shot', 'nike-court-shot', '01JGJYCK7EKQ3DB0ABJG83KB71.webp', 'This low-profile shoe is a minimalist\'s staple. Its synthetic leather upper creates a classic look, while the stitching and textured Swoosh logo add just the right amount of elevated detail.', 1149000, 3, 1, 1, '1', NULL, '2025-01-02 00:23:57', '2025-01-02 00:23:57'),
(22, 'Nike G.T. Hustle 3 EP', 'nike-gt-hustle-3-ep', '01JGJYS880GG58Q237VX0V02KA.webp', 'The G.T. Hustle 3 can help you thrive at crunch time. With double-stacked Air Zoom cushioning providing bouncy horsepower, it helps save you energy over the course of the game. It\'s designed for those who want to outlast their opponent and stay fresh through to the final buzzer. Who\'s got next? You do. With its extra-durable rubber outsole, this version gives you traction for outdoor courts.', 3049000, 6, 1, 3, '1', NULL, '2025-01-02 00:30:52', '2025-01-02 00:30:52'),
(23, 'Nike Rival Fly 4', 'nike-rival-fly-4', '01JGJYTV9WR7092QAVCJ55RTPQ.webp', 'The Nike Rival Fly 4 can help you push your pace. Its lightweight, low-profile design has a forefoot Air Zoom unit and Cushlon 3.0 foam to help keep you fast on the road and fresh for your miles.', 1549000, 7, 0, 3, '1', NULL, '2025-01-02 00:31:44', '2025-01-02 00:31:44'),
(24, 'Nike Free 2025', 'nike-free-2025', '01JGJYXK1R9379MGNHR15DHPPZ.webp', 'The Nike Free 2025 brings you miles of comfort with Flyknit that delivers even more zoned stretch and breathability than before. The outsole pattern adjusts to your every step for a dynamic ride from top to bottom.', 1549000, 6, 1, 3, '1', NULL, '2025-01-02 00:33:14', '2025-01-02 00:33:14'),
(25, 'Nike SB PS8', 'nike-sb-ps8', '01JGJZ10D2GRVMH7PRWGTWGCNT.webp', 'Designed to put in the work out of the box, the PS8 delivers with a 3-pronged approach. Starting with a layered Flyknit construction with leather in high-wear areas, it offers a broken-in feel that retains its shape session after session. An updated Flyplate is integrated into the sole, providing a responsive feel that works in tandem with the HART (High Abrasion Rubber Tech) outsole. HART uses less rubber to help make the outsole lighter and more flexible. The PS8 wraps it all in a low-top silhouette with Nike Running aesthetics, heritage pattern and all the technical details that matter.', 1909000, 8, 1, 3, '1', NULL, '2025-01-02 00:35:06', '2025-01-02 00:35:06'),
(26, 'Nike Calm', 'nike-calm', '01JGJZ4B41KV9JQTRG1VX5XEEH.webp', 'Enjoy a calm, comfortable experience—wherever your day off takes you. Made from soft yet supportive foam, the minimal design makes these sandals easy to style with or without socks. And extra-plush straps create an oversized look, with the top strap being adjustable to give you that perfect fit.', 1199000, 5, 1, 2, '1', NULL, '2025-01-02 00:36:55', '2025-01-02 00:36:55'),
(27, 'Nike SB Dunk Low Pro', 'nike-sb-dunk-low-pro', '01JGJZ8W30SP6JPHDARB73KZ8R.webp', 'An \'80s b-ball icon returns with classic details and throwback hoops flair. Channelling vintage style back onto the streets, its padded low-cut collar lets you comfortably take your game anywhere.', 1729000, 3, 1, 1, '1', NULL, '2025-01-02 00:39:24', '2025-01-02 00:39:24'),
(28, 'Nike Lunar Roam', 'nike-lunar-roam', '01JGJZBH6496VD1X2665PK18NM.webp', 'In 2008, Lunar took its legendary lightweight bounce to the streets for the first time. Fast forward 15 years and the plush foam midsole your feet fell in love with is remastered and amplified for the city. Now equipped with breezy textiles and supportive Magwire cables in the upper, it delivers a lightweight, stable feel you\'ll want to wear season after season. And in a tonal Dark Smoke Grey colourway, this sleek pair will make a subdued statement—wherever you roam.', 2379000, 4, 1, 1, '1', NULL, '2025-01-02 00:40:51', '2025-01-02 00:40:51'),
(29, 'Nike Vista', 'nike-vista', '01JGJZE6BH14A8FYC1ZQFNP6FC.webp', 'With all of the necessary elements you need for a day out (like plush padding and easy-to-style colours), the Nike Vista delivers on less is more. Lightweight, airy and supportive, it lets you bridge city living and nature with the pull of a strap.', 759000, 7, 1, 2, '1', NULL, '2025-01-02 00:42:18', '2025-01-02 00:42:18'),
(30, 'Nike Air Max 90', 'nike-air-max-90', '01JGJZGHT1ZR0DWJAXFYVQVNCX.webp', 'Nothing as fly, nothing as comfortable, nothing as proven.The Nike Air Max 90 stays true to its OG running roots with the iconic Waffle sole, stitched overlays and classic TPU details.Classic colours celebrate your fresh look while Max Air cushioning adds comfort to the journey.', 1799000, 8, 1, 1, '1', NULL, '2025-01-02 00:43:35', '2025-01-02 00:43:35'),
(31, 'Nike Calm', 'nike-calm', '01JGJZJJ5FZX0HRJKPXDXJM4PC.webp', 'Enjoy a calm, comfortable experience—wherever your day off takes you. Made from soft yet supportive foam, the minimal design makes these slides easy to style with or without socks. And they\'ve got a textured footbed to help keep your feet in place.', 689000, 9, 1, 2, '1', NULL, '2025-01-02 00:44:41', '2025-01-02 00:44:41'),
(32, 'Nike Cortez Textile', 'nike-cortez-textile', '01JGJZMQBY9FM9ZZCQMGXDHS6M.webp', 'You spoke. We listened. Based on your feedback, we\'ve revamped the original Cortez while still keeping the retro appeal you know and love. This nylon and suede edition features a wider toe area and firmer side panels, so you can comfortably wear them day in, day out without any warping. Cortez fans—this one\'s for you.', 1399000, 4, 0, 1, '1', NULL, '2025-01-02 00:45:52', '2025-01-02 00:45:52'),
(33, 'Nike Air Foamposite One', 'nike-air-foamposite-one', '01JGJZQF0XSBFVH8F01C288EVN.webp', 'The Nike Air Foamposite One is a cross between b-ball greatness and off-court style. The smooth hoops icon keeps the liquid look of the Foamposite upper, while the signature \"1 Cent\" logo and low-profile cushioning let others know it\'s game time.', 3569000, 6, 0, 1, '1', NULL, '2025-01-02 00:47:22', '2025-01-02 00:47:22'),
(34, 'Nike Offcourt', 'nike-offcourt', '01JGJZV25Q87ZP8ZAY6Y4QTKJR.webp', 'These slides are designed to help you relax and recharge. Innovative dual-layered foam underfoot pairs with a plush strap to bring the comfort, while the iconic AF-1 pivot circle pattern on the outsole and block-letter branding casually nod to heritage hoops. What are you waiting for? Get lounging.', 529000, 8, 0, 2, '1', NULL, '2025-01-02 00:49:20', '2025-01-02 00:49:20'),
(35, 'Nike SB Chron 2', 'nike-sb-chron-2', '01JGJZYBYJJD4585KMTNPZWJF4.webp', 'Flexible and breathable, the Nike SB Chron 2 is a sequel worthy of its predecessor.The revamped design includes a reshaped collar and heel for an improved fit—all while maintaining the comfort and performance you expect from Nike SB.', 999000, 5, 1, 2, '1', NULL, '2025-01-02 00:51:08', '2025-01-02 00:51:08'),
(36, 'Nike JAM', 'nike-jam', '01JGK00H418KER82C0RFD16965.webp', 'Bring your body, mind and soul with JAM—Nike\'s first shoe created for breakers on the world stage. We obsessed over every detail from top to bottom so you can throw down in a cypher with confidence. It features a flexible and durable upper that moves with you, while textured hand grips on the midsole make it easier to grab your shoe when you\'re up in the air. And for a little something extra, the flipped logo is right side up when you\'re upside down during freeze poses.', 1909000, 4, 1, 1, '1', NULL, '2025-01-02 00:52:19', '2025-01-02 00:52:19'),
(37, 'Nike Victori One', 'nike-victori-one', '01JGK0A57ZB5DHVT5G7Z7CTASA.webp', 'From the beach to the stands, the Victori One is a must-have slide for everyday activities. Subtle yet substantial updates like a wider strap and softer foam make lounging easy. Go ahead—enjoy endless comfort for your feet.', 449000, 6, 1, 2, '1', NULL, '2025-01-02 00:57:34', '2025-01-02 00:57:34'),
(38, 'Nike Lunar Roam', 'nike-lunar-roam', '01JGK0CS79XXHHN5SQZ7BPTS6B.webp', 'Add a dash of bouncy performance to your lifestyle look with the Lunar Roam. Breezy, lightweight materials pair with supportive Magwire cables and an ultra-plush midsole for laid-back comfort you\'ll want to wear season after season. Step into this explosive edition and make a bold, springy statement—wherever you roam.', 2379000, 7, 1, 3, '1', NULL, '2025-01-02 00:59:00', '2025-01-02 00:59:00'),
(39, 'Nike SB Malor', 'nike-sb-malor', '01JGK0EVEHR68876HMFM5VZYWJ.webp', 'Destroy this shoe! The SB Malor was designed for entry-level skaters who need a shoe that can handle long hours of practice honing their skills. Layers of suede and canvas keep it durable, while the outsole combines a herringbone pattern with the Air Force 1 circular pattern to help accentuate both grip and movement. Step in, the Malor is ready to get shredded.', 1149000, 4, 0, 1, '1', NULL, '2025-01-02 01:00:08', '2025-01-02 01:00:08'),
(40, 'Nike SB Dunk Low Pro', 'nike-sb-dunk-low-pro', '01JGK0H474Z8BSQBT1BVT33K36.webp', '\nIn 1939, a Technicolor tale of a whirling tornado and a ragtag crew\'s adventure in the Land of Oz captured the imagination of the world. The Wizard of Oz remains one of the most celebrated musical fantasies in film history. To commemorate a cinematic milestone, Nike SB focuses its lens on the film\'s iconic poppy field scene.', 2099000, 3, 1, 1, '1', NULL, '2025-01-02 01:01:23', '2025-01-02 01:01:23'),
(41, 'Nike SB Force 58', 'nike-sb-force-58', '01JGK0M0E5ATS5K963RR523WEW.webp', 'The latest and greatest innovation to hit the streets, the Force 58 gives you the durability of a cupsole with the flexibility of vulcanised shoes. Made from canvas and suede and finished with perforations on the toe, the whole look is infused with heritage basketball DNA.', 1149000, 4, 1, 1, '1', NULL, '2025-01-02 01:02:57', '2025-01-02 01:02:57'),
(42, 'Nike Air VaporMax Plus', 'nike-air-vapormax-plus', '01JGK0PVQHJ402KMSFT0X1JNDV.webp', 'The Nike Air VaporMax Plus looks to the past and propels you into the future. Nodding to the 1998 Air Max Plus with its floating cage, padded upper and heel logo, it adds revolutionary VaporMax Air technology to ramp up the comfort and create a modern look.', 2779000, 5, 0, 3, '1', NULL, '2025-01-02 01:04:31', '2025-01-02 01:04:31');

-- --------------------------------------------------------

--
-- Struktur dari tabel `shoe_photos`
--

CREATE TABLE `shoe_photos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `photo` varchar(255) NOT NULL,
  `shoe_id` bigint(20) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `shoe_photos`
--

INSERT INTO `shoe_photos` (`id`, `photo`, `shoe_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, '01JFJJHRXKNNJMPXE1MJBVE67B.png', 1, NULL, '2024-12-20 10:41:22', '2024-12-20 10:41:22'),
(2, '01JFJJHRXXQHSQTGDFMHX555M7.png', 1, NULL, '2024-12-20 10:41:22', '2024-12-20 10:41:22'),
(3, '01JFJJHRY6W0DXGDZGQ4HFNKGP.png', 1, NULL, '2024-12-20 10:41:22', '2024-12-20 10:41:22'),
(4, '01JFPVB1XW0QMTY6BBWDH9GD7A.jpg', 2, NULL, '2024-12-22 02:31:57', '2024-12-22 02:31:57'),
(5, '01JFPVB1XYJVYFAHHWCWPEJWPZ.jpg', 2, NULL, '2024-12-22 02:31:57', '2024-12-22 02:31:57'),
(6, '01JFPVB1Y0155RHR6XD9877GSH.jpg', 2, NULL, '2024-12-22 02:31:57', '2024-12-22 02:31:57'),
(7, '01JFPVKPQ8V97N4GBMYHH9WTCP.jpg', 3, NULL, '2024-12-22 02:36:40', '2024-12-22 02:36:40'),
(8, '01JFPVKPQBS3G3D5TN5XEH4FA0.png', 3, NULL, '2024-12-22 02:36:40', '2024-12-22 02:36:40'),
(9, '01JFPVKPQFNBFFGBT3485EFH6W.jpg', 3, NULL, '2024-12-22 02:36:40', '2024-12-22 02:36:40'),
(10, '01JFPY2VDRC6TRCRFVDGPWT5N3.png', 4, NULL, '2024-12-22 03:19:54', '2024-12-22 03:19:54'),
(11, '01JFPY2VE2DXTQSF2C9E8VNKD8.png', 4, NULL, '2024-12-22 03:19:54', '2024-12-22 03:19:54'),
(12, '01JFPY2VEA12ARC86AR2EX62SW.png', 4, NULL, '2024-12-22 03:19:54', '2024-12-22 03:19:54'),
(13, '01JFPY2VEM4SGTX0WMM4P8C1BV.jpg', 4, NULL, '2024-12-22 03:19:54', '2024-12-22 03:19:54'),
(14, '01JFPZ3HM6MDD4ZSV747A2CGG8.png', 5, NULL, '2024-12-22 03:37:45', '2024-12-22 03:37:45'),
(15, '01JFPZ3HMHNS2HH369Z3C5HD9J.png', 5, NULL, '2024-12-22 03:37:45', '2024-12-22 03:37:45'),
(16, '01JFPZ3HMVJC4EHJEQM15A1KJM.png', 5, NULL, '2024-12-22 03:37:45', '2024-12-22 03:37:45'),
(17, '01JFPZ3HN6JJHZEYCT3MKMM0WJ.png', 5, NULL, '2024-12-22 03:37:45', '2024-12-22 03:37:45'),
(18, '01JFPZ3HNF9ZJWBMS8ETM39G25.png', 5, NULL, '2024-12-22 03:37:45', '2024-12-22 03:37:45'),
(19, '01JFPZ90Z6RM8Z61NCZHERMHR0.jpg', 6, NULL, '2024-12-22 03:40:45', '2024-12-22 03:40:45'),
(20, '01JFPZ90ZHXXQX7P2G100NPBKV.png', 6, NULL, '2024-12-22 03:40:45', '2024-12-22 03:40:45'),
(21, '01JFPZ90ZRVR27BG3ZW0FMXX9E.jpg', 6, NULL, '2024-12-22 03:40:45', '2024-12-22 03:40:45'),
(22, '01JFS87PB8W196K09QQXHBYHGE.jpg', 7, NULL, '2024-12-23 00:55:47', '2024-12-23 00:55:47'),
(23, '01JFS87PBJK02ZK228ZJ27VTF5.jpg', 7, NULL, '2024-12-23 00:55:47', '2024-12-23 00:55:47'),
(24, '01JGJX9M3YPJVHYX6PB4RDAPWF.webp', 8, NULL, '2025-01-02 00:04:51', '2025-01-02 00:04:51'),
(25, '01JGJX9M4K09TVAD753MSV2KVQ.webp', 8, NULL, '2025-01-02 00:04:51', '2025-01-02 00:04:51'),
(26, '01JGJXCEFV0FAFCDT92KMXGVDF.webp', 9, NULL, '2025-01-02 00:06:24', '2025-01-02 00:06:24'),
(27, '01JGJXCEG7PNRE04JF35TC6HJE.webp', 9, NULL, '2025-01-02 00:06:24', '2025-01-02 00:06:24'),
(28, '01JGJXCEGEJEK4D4AZ6QPKM3NJ.webp', 9, NULL, '2025-01-02 00:06:24', '2025-01-02 00:06:24'),
(29, '01JGJXG401C55WZD0YV678AXFM.webp', 10, NULL, '2025-01-02 00:08:24', '2025-01-02 00:08:24'),
(30, '01JGJXG40CYS1QKC9D9E1E99SG.webp', 10, NULL, '2025-01-02 00:08:24', '2025-01-02 00:08:24'),
(31, '01JGJXG40QEXS9RGEHBMK52KKQ.jpg', 10, NULL, '2025-01-02 00:08:24', '2025-01-02 00:08:24'),
(32, '01JGJXK0P93QDTNEAGBZ5ZA0AV.webp', 11, NULL, '2025-01-02 00:09:59', '2025-01-02 00:09:59'),
(33, '01JGJXK0PHD2K3GHQJKF3XJ9F1.webp', 11, NULL, '2025-01-02 00:09:59', '2025-01-02 00:09:59'),
(34, '01JGJXK0PTG3P114TZE29Y3SEP.webp', 11, NULL, '2025-01-02 00:09:59', '2025-01-02 00:09:59'),
(35, '01JGJXP7XTWVW97CZBCVCZ29E2.webp', 12, NULL, '2025-01-02 00:11:45', '2025-01-02 00:11:45'),
(36, '01JGJXP7Y3J1GXMCG4R10BG0SX.jpg', 12, NULL, '2025-01-02 00:11:45', '2025-01-02 00:11:45'),
(37, '01JGJXSH7H5TKS2GS9WDHDTPQ6.webp', 13, NULL, '2025-01-02 00:13:32', '2025-01-02 00:13:32'),
(38, '01JGJXSH7SWTCVYHA17NGTTE9R.webp', 13, NULL, '2025-01-02 00:13:32', '2025-01-02 00:13:32'),
(39, '01JGJXSH817WA8SY60M24N6XBQ.jpg', 13, NULL, '2025-01-02 00:13:32', '2025-01-02 00:13:32'),
(40, '01JGJXWA3KTG9KB29JPH9563XP.webp', 14, NULL, '2025-01-02 00:15:03', '2025-01-02 00:15:03'),
(41, '01JGJXWA3TMY6ERDGYQBZK404K.webp', 14, NULL, '2025-01-02 00:15:03', '2025-01-02 00:15:03'),
(42, '01JGJXWA42RNQRAPGH325F7WSA.webp', 14, NULL, '2025-01-02 00:15:03', '2025-01-02 00:15:03'),
(43, '01JGJXWA4B7WAG120PWNJZ2282.webp', 14, NULL, '2025-01-02 00:15:03', '2025-01-02 00:15:03'),
(44, '01JGJXYFENF27E7JDA7QB321VM.webp', 15, NULL, '2025-01-02 00:16:14', '2025-01-02 00:16:14'),
(45, '01JGJXYFEW4TKYGN0JDEFGGWRW.webp', 15, NULL, '2025-01-02 00:16:14', '2025-01-02 00:16:14'),
(46, '01JGJXYFF4PHRNR92CY2VQRWNY.webp', 15, NULL, '2025-01-02 00:16:14', '2025-01-02 00:16:14'),
(47, '01JGJY0DPHT9RMAS8V6CNXP96S.webp', 16, NULL, '2025-01-02 00:17:18', '2025-01-02 00:17:18'),
(48, '01JGJY0DPRQZJJB4N255EZ5C02.webp', 16, NULL, '2025-01-02 00:17:18', '2025-01-02 00:17:18'),
(49, '01JGJY0DQ4X8KH4B117WEHXMV9.webp', 16, NULL, '2025-01-02 00:17:18', '2025-01-02 00:17:18'),
(50, '01JGJY2SW3P923QE2NBXZTF559.webp', 17, NULL, '2025-01-02 00:18:36', '2025-01-02 00:18:36'),
(51, '01JGJY2SWFRJP96BM5WR1DC0WJ.webp', 17, NULL, '2025-01-02 00:18:36', '2025-01-02 00:18:36'),
(52, '01JGJY2SWYRJTWCVF1GGDYA73J.webp', 17, NULL, '2025-01-02 00:18:36', '2025-01-02 00:18:36'),
(53, '01JGJY52ZBPKZFE93K4YJD8PD3.webp', 18, NULL, '2025-01-02 00:19:51', '2025-01-02 00:19:51'),
(54, '01JGJY52ZPDYM2V5TBNW945NE2.webp', 18, NULL, '2025-01-02 00:19:51', '2025-01-02 00:19:51'),
(55, '01JGJY52ZYF2M2NK5KQ6EZE9XV.webp', 18, NULL, '2025-01-02 00:19:51', '2025-01-02 00:19:51'),
(56, '01JGJY5304EZVJ5XZ6T0XAMTW9.webp', 18, NULL, '2025-01-02 00:19:51', '2025-01-02 00:19:51'),
(57, '01JGJY7XA5GE55QE34M8BZM0B9.webp', 19, NULL, '2025-01-02 00:21:24', '2025-01-02 00:21:24'),
(58, '01JGJY7XADAFS3AN2CXE79X5XK.webp', 19, NULL, '2025-01-02 00:21:24', '2025-01-02 00:21:24'),
(59, '01JGJY7XAM7X5402EWPG8CCXYS.webp', 19, NULL, '2025-01-02 00:21:24', '2025-01-02 00:21:24'),
(60, '01JGJYAEAJX73X7VHNV289CXR1.webp', 20, NULL, '2025-01-02 00:22:47', '2025-01-02 00:22:47'),
(61, '01JGJYAEB0ASSPQ68WKY669BA7.webp', 20, NULL, '2025-01-02 00:22:47', '2025-01-02 00:22:47'),
(62, '01JGJYAEB9BMSXPH257R3NVG27.webp', 20, NULL, '2025-01-02 00:22:47', '2025-01-02 00:22:47'),
(63, '01JGJYAEBGN2RWW912PJMSP0NG.webp', 20, NULL, '2025-01-02 00:22:47', '2025-01-02 00:22:47'),
(64, '01JGJYAEBSXHDKKWHVK8BY7XQY.webp', 20, NULL, '2025-01-02 00:22:47', '2025-01-02 00:22:47'),
(65, '01JGJYCK7Y1XJ98G2GQ7BCVK99.webp', 21, NULL, '2025-01-02 00:23:57', '2025-01-02 00:23:57'),
(66, '01JGJYCK867B1FES76NHR53AAY.webp', 21, NULL, '2025-01-02 00:23:57', '2025-01-02 00:23:57'),
(67, '01JGJYS88A9TYWZQG70DFBGFJS.webp', 22, NULL, '2025-01-02 00:30:52', '2025-01-02 00:30:52'),
(68, '01JGJYS88HQ87CR2AZKPJWR5T3.webp', 22, NULL, '2025-01-02 00:30:52', '2025-01-02 00:30:52'),
(69, '01JGJYS88RZCTQCAPM9W6HYJ24.webp', 22, NULL, '2025-01-02 00:30:52', '2025-01-02 00:30:52'),
(70, '01JGJYTVA9CWNF00XKVEEWXKS3.webp', 23, NULL, '2025-01-02 00:31:44', '2025-01-02 00:31:44'),
(71, '01JGJYTVAG13XP81T8VHFCJWCM.webp', 23, NULL, '2025-01-02 00:31:44', '2025-01-02 00:31:44'),
(72, '01JGJYTVASHCWVJC9ZZQ629M31.webp', 23, NULL, '2025-01-02 00:31:44', '2025-01-02 00:31:44'),
(73, '01JGJYXK26187F2NG32CY807GF.webp', 24, NULL, '2025-01-02 00:33:14', '2025-01-02 00:33:14'),
(74, '01JGJYXK2E2EP7BRZ5EWK35JYR.webp', 24, NULL, '2025-01-02 00:33:14', '2025-01-02 00:33:14'),
(75, '01JGJYXK2NZTPA6B6E1G0BT75A.webp', 24, NULL, '2025-01-02 00:33:14', '2025-01-02 00:33:14'),
(76, '01JGJZ10DF51TZ07QJDJA6Z8GV.webp', 25, NULL, '2025-01-02 00:35:06', '2025-01-02 00:35:06'),
(77, '01JGJZ10DRZVGMRG9YXJX3YX2F.webp', 25, NULL, '2025-01-02 00:35:06', '2025-01-02 00:35:06'),
(78, '01JGJZ10E5E6FEMRYZCQFC8EXP.jpg', 25, NULL, '2025-01-02 00:35:06', '2025-01-02 00:35:06'),
(79, '01JGJZ4B4D0A83RZ8D7MZ5QTQ0.webp', 26, NULL, '2025-01-02 00:36:55', '2025-01-02 00:36:55'),
(80, '01JGJZ4B4M4BG4QXX7P5SY426V.webp', 26, NULL, '2025-01-02 00:36:55', '2025-01-02 00:36:55'),
(81, '01JGJZ4B4T9GBH8NG5XAK99B14.jpg', 26, NULL, '2025-01-02 00:36:55', '2025-01-02 00:36:55'),
(82, '01JGJZ4B52M0M8KMYXJ51HE9QT.jpg', 26, NULL, '2025-01-02 00:36:55', '2025-01-02 00:36:55'),
(83, '01JGJZ8W3CTZXYH1N70J0H39YT.webp', 27, NULL, '2025-01-02 00:39:24', '2025-01-02 00:39:24'),
(84, '01JGJZ8W3K9WFXWJAS1PTSDFTB.webp', 27, NULL, '2025-01-02 00:39:24', '2025-01-02 00:39:24'),
(85, '01JGJZ8W3WPJPPAWABJTYN9AYW.jpg', 27, NULL, '2025-01-02 00:39:24', '2025-01-02 00:39:24'),
(86, '01JGJZ8W47GR177AV6JGNB3S0E.jpg', 27, NULL, '2025-01-02 00:39:24', '2025-01-02 00:39:24'),
(87, '01JGJZBH6KGPFDKEHGWMNSP13A.webp', 28, NULL, '2025-01-02 00:40:51', '2025-01-02 00:40:51'),
(88, '01JGJZBH6V2ZFD4TXNH7S1S0KA.webp', 28, NULL, '2025-01-02 00:40:51', '2025-01-02 00:40:51'),
(89, '01JGJZE6BZ01C4FX2AQ6VH5K80.webp', 29, NULL, '2025-01-02 00:42:18', '2025-01-02 00:42:18'),
(90, '01JGJZE6C7AKCCSA8RQTMEHEXH.jpg', 29, NULL, '2025-01-02 00:42:18', '2025-01-02 00:42:18'),
(91, '01JGJZE6CFW6Z2WWHB8EHGF6J2.jpg', 29, NULL, '2025-01-02 00:42:18', '2025-01-02 00:42:18'),
(92, '01JGJZGHTJHTZGG1ZE6F6WC1D4.jpg', 30, NULL, '2025-01-02 00:43:35', '2025-01-02 00:43:35'),
(93, '01JGJZGHTV16ZBV42KB0ZHC3PC.jpg', 30, NULL, '2025-01-02 00:43:35', '2025-01-02 00:43:35'),
(94, '01JGJZGHV6GBZ5670BXCJMHY42.jpg', 30, NULL, '2025-01-02 00:43:35', '2025-01-02 00:43:35'),
(95, '01JGJZJJ5XMC5T6K9H2FNB8N9R.jpg', 31, NULL, '2025-01-02 00:44:41', '2025-01-02 00:44:41'),
(96, '01JGJZJJ67G6GFJPWH2EKMYAJR.jpg', 31, NULL, '2025-01-02 00:44:41', '2025-01-02 00:44:41'),
(97, '01JGJZMQCAZN8WKKCVPJ3Q2N7F.webp', 32, NULL, '2025-01-02 00:45:52', '2025-01-02 00:45:52'),
(98, '01JGJZMQCE2HS599VSCHTBZTVF.jpg', 32, NULL, '2025-01-02 00:45:52', '2025-01-02 00:45:52'),
(99, '01JGJZMQCPFJ5C0KD4D3MJ45Q5.jpg', 32, NULL, '2025-01-02 00:45:52', '2025-01-02 00:45:52'),
(100, '01JGJZMQD075P26QDWT1ARSE8J.jpg', 32, NULL, '2025-01-02 00:45:52', '2025-01-02 00:45:52'),
(101, '01JGJZQF18TFM689VE227N6DXC.webp', 33, NULL, '2025-01-02 00:47:22', '2025-01-02 00:47:22'),
(102, '01JGJZQF1GPHGN2V0ZF7DQ09GQ.webp', 33, NULL, '2025-01-02 00:47:22', '2025-01-02 00:47:22'),
(103, '01JGJZQF1RJQBQP92D3KQSXMM5.jpg', 33, NULL, '2025-01-02 00:47:22', '2025-01-02 00:47:22'),
(104, '01JGJZV269KCS0KR7JK2VF3DA4.webp', 34, NULL, '2025-01-02 00:49:20', '2025-01-02 00:49:20'),
(105, '01JGJZV26JETA7VTJBFWKTGGF6.jpg', 34, NULL, '2025-01-02 00:49:20', '2025-01-02 00:49:20'),
(106, '01JGJZV26X4BQHNAEF36C19FVG.webp', 34, NULL, '2025-01-02 00:49:20', '2025-01-02 00:49:20'),
(107, '01JGJZYBYZFSS2N72E760QKAC4.webp', 35, NULL, '2025-01-02 00:51:08', '2025-01-02 00:51:08'),
(108, '01JGJZYBZ6GM073H54Q7DEFMVW.jpg', 35, NULL, '2025-01-02 00:51:08', '2025-01-02 00:51:08'),
(109, '01JGJZYBZEXRF34PXPWS591CM5.jpg', 35, NULL, '2025-01-02 00:51:08', '2025-01-02 00:51:08'),
(110, '01JGK00H4EF7J29GCTVSD7Y3PS.webp', 36, NULL, '2025-01-02 00:52:19', '2025-01-02 00:52:19'),
(111, '01JGK00H4PBTEWJ3ZQCQGSPNH8.webp', 36, NULL, '2025-01-02 00:52:19', '2025-01-02 00:52:19'),
(112, '01JGK00H53XWMNAMYP79R601GK.jpg', 36, NULL, '2025-01-02 00:52:19', '2025-01-02 00:52:19'),
(113, '01JGK00H5AVTNB9170NS60DG0G.jpg', 36, NULL, '2025-01-02 00:52:19', '2025-01-02 00:52:19'),
(114, '01JGK0A58CFTNG48EZEHF90EV8.webp', 37, NULL, '2025-01-02 00:57:34', '2025-01-02 00:57:34'),
(115, '01JGK0A58PTC8TGARJ07ZT0423.jpg', 37, NULL, '2025-01-02 00:57:34', '2025-01-02 00:57:34'),
(116, '01JGK0A5900NPZA6HMXSABASH0.webp', 37, NULL, '2025-01-02 00:57:34', '2025-01-02 00:57:34'),
(117, '01JGK0CS7QS8DFD4FV307JR0CA.webp', 38, NULL, '2025-01-02 00:59:00', '2025-01-02 00:59:00'),
(118, '01JGK0CS7YWJTY8Z8RGSJA4Y2F.webp', 38, NULL, '2025-01-02 00:59:00', '2025-01-02 00:59:00'),
(119, '01JGK0EVEZ6KCJSNSV8AHKA1VJ.webp', 39, NULL, '2025-01-02 01:00:08', '2025-01-02 01:00:08'),
(120, '01JGK0EVF6WPJTPWPS9R60EXRG.webp', 39, NULL, '2025-01-02 01:00:08', '2025-01-02 01:00:08'),
(121, '01JGK0EVFGJ9T18V9FH3PN15RA.jpg', 39, NULL, '2025-01-02 01:00:08', '2025-01-02 01:00:08'),
(122, '01JGK0H47MMST4APV7E0NBS2DD.webp', 40, NULL, '2025-01-02 01:01:23', '2025-01-02 01:01:23'),
(123, '01JGK0H47VFNSNH92DFRA4XHWV.webp', 40, NULL, '2025-01-02 01:01:23', '2025-01-02 01:01:23'),
(124, '01JGK0H485JDPB9VJX5QVV7FW8.webp', 40, NULL, '2025-01-02 01:01:23', '2025-01-02 01:01:23'),
(125, '01JGK0M0EP0QANEHCHWW0D3PYY.webp', 41, NULL, '2025-01-02 01:02:57', '2025-01-02 01:02:57'),
(126, '01JGK0M0EYV7YXYK8XYCQPS6BT.webp', 41, NULL, '2025-01-02 01:02:57', '2025-01-02 01:02:57'),
(127, '01JGK0M0F78WAV6597K6MMKX7N.webp', 41, NULL, '2025-01-02 01:02:57', '2025-01-02 01:02:57'),
(128, '01JGK0M0FGQRR3QKWNBG2JKHN9.webp', 41, NULL, '2025-01-02 01:02:57', '2025-01-02 01:02:57'),
(129, '01JGK0M0FR2R9C38PS182CBKSE.jpg', 41, NULL, '2025-01-02 01:02:57', '2025-01-02 01:02:57'),
(130, '01JGK0PVR15Q4QKS41SAPXCTEQ.webp', 42, NULL, '2025-01-02 01:04:31', '2025-01-02 01:04:31'),
(131, '01JGK0PVR9G7X0RA244WQNETP8.jpg', 42, NULL, '2025-01-02 01:04:31', '2025-01-02 01:04:31'),
(132, '01JGK0PVRH0QV0BHZ3BXRQ84TC.webp', 42, NULL, '2025-01-02 01:04:31', '2025-01-02 01:04:31'),
(133, '01JGK0PVRS574HZS5PE106NDBP.webp', 42, NULL, '2025-01-02 01:04:31', '2025-01-02 01:04:31');

-- --------------------------------------------------------

--
-- Struktur dari tabel `shoe_sizes`
--

CREATE TABLE `shoe_sizes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `size` varchar(255) NOT NULL,
  `shoe_id` bigint(20) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `shoe_sizes`
--

INSERT INTO `shoe_sizes` (`id`, `size`, `shoe_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'ID 45', 1, NULL, '2024-12-20 10:41:22', '2024-12-20 10:41:22'),
(2, 'ID 46', 1, NULL, '2024-12-20 10:41:22', '2024-12-20 10:41:22'),
(3, 'ID 47', 1, NULL, '2024-12-20 10:41:22', '2024-12-20 10:41:22'),
(4, '43', 2, NULL, '2024-12-22 02:31:57', '2024-12-22 02:31:57'),
(5, '44', 2, NULL, '2024-12-22 02:31:57', '2024-12-22 02:31:57'),
(6, '45', 2, NULL, '2024-12-22 02:31:57', '2024-12-22 02:31:57'),
(7, '46', 2, NULL, '2024-12-22 02:31:57', '2024-12-22 02:31:57'),
(8, '45', 3, NULL, '2024-12-22 02:36:40', '2024-12-22 02:36:40'),
(9, '46', 3, NULL, '2024-12-22 02:36:40', '2024-12-22 02:36:40'),
(10, '47', 3, NULL, '2024-12-22 02:36:40', '2024-12-22 02:36:40'),
(11, '48', 3, NULL, '2024-12-22 02:36:40', '2024-12-22 02:36:40'),
(12, '44', 4, NULL, '2024-12-22 03:19:54', '2024-12-22 03:19:54'),
(13, '45', 4, NULL, '2024-12-22 03:19:54', '2024-12-22 03:19:54'),
(14, '46', 4, NULL, '2024-12-22 03:19:54', '2024-12-22 03:19:54'),
(15, '47', 4, NULL, '2024-12-22 03:19:54', '2024-12-22 03:19:54'),
(16, '45', 5, NULL, '2024-12-22 03:37:45', '2024-12-22 03:37:45'),
(17, '46', 5, NULL, '2024-12-22 03:37:45', '2024-12-22 03:37:45'),
(18, '47', 5, NULL, '2024-12-22 03:37:45', '2024-12-22 03:37:45'),
(19, '48', 5, NULL, '2024-12-22 03:37:45', '2024-12-22 03:37:45'),
(20, '46', 6, NULL, '2024-12-22 03:40:45', '2024-12-22 03:40:45'),
(21, '47', 6, NULL, '2024-12-22 03:40:45', '2024-12-22 03:40:45'),
(22, '48', 6, NULL, '2024-12-22 03:40:45', '2024-12-22 03:40:45'),
(23, '47', 7, NULL, '2024-12-23 00:55:47', '2024-12-23 00:55:47'),
(24, '48', 7, NULL, '2024-12-23 00:55:47', '2024-12-23 00:55:47'),
(25, '49', 7, NULL, '2024-12-23 00:55:47', '2024-12-23 00:55:47'),
(26, '46', 8, NULL, '2025-01-02 00:04:51', '2025-01-02 00:04:51'),
(27, '47', 8, NULL, '2025-01-02 00:04:51', '2025-01-02 00:04:51'),
(28, '46', 9, NULL, '2025-01-02 00:06:24', '2025-01-02 00:06:24'),
(29, '47', 9, NULL, '2025-01-02 00:06:24', '2025-01-02 00:06:24'),
(30, '48', 9, NULL, '2025-01-02 00:06:24', '2025-01-02 00:06:24'),
(31, '45', 10, NULL, '2025-01-02 00:08:24', '2025-01-02 00:08:24'),
(32, '46', 10, NULL, '2025-01-02 00:08:24', '2025-01-02 00:08:24'),
(33, '46', 11, NULL, '2025-01-02 00:09:59', '2025-01-02 00:09:59'),
(34, '47', 11, NULL, '2025-01-02 00:09:59', '2025-01-02 00:09:59'),
(35, '48', 11, NULL, '2025-01-02 00:09:59', '2025-01-02 00:09:59'),
(36, '46', 12, NULL, '2025-01-02 00:11:45', '2025-01-02 00:11:45'),
(37, '47', 12, NULL, '2025-01-02 00:11:45', '2025-01-02 00:11:45'),
(38, '48', 12, NULL, '2025-01-02 00:11:45', '2025-01-02 00:11:45'),
(39, '45', 13, NULL, '2025-01-02 00:13:32', '2025-01-02 00:13:32'),
(40, '46', 13, NULL, '2025-01-02 00:13:32', '2025-01-02 00:13:32'),
(41, '47', 13, NULL, '2025-01-02 00:13:33', '2025-01-02 00:13:33'),
(42, '45', 14, NULL, '2025-01-02 00:15:04', '2025-01-02 00:15:04'),
(43, '46', 14, NULL, '2025-01-02 00:15:04', '2025-01-02 00:15:04'),
(44, '46', 15, NULL, '2025-01-02 00:16:14', '2025-01-02 00:16:14'),
(45, '47', 15, NULL, '2025-01-02 00:16:15', '2025-01-02 00:16:15'),
(46, '46', 16, NULL, '2025-01-02 00:17:18', '2025-01-02 00:17:18'),
(47, '47', 16, NULL, '2025-01-02 00:17:18', '2025-01-02 00:17:18'),
(48, '46', 17, NULL, '2025-01-02 00:18:36', '2025-01-02 00:18:36'),
(49, '47', 17, NULL, '2025-01-02 00:18:36', '2025-01-02 00:18:36'),
(50, '48', 17, NULL, '2025-01-02 00:18:36', '2025-01-02 00:18:36'),
(51, '44', 18, NULL, '2025-01-02 00:19:51', '2025-01-02 00:19:51'),
(52, '45', 18, NULL, '2025-01-02 00:19:51', '2025-01-02 00:19:51'),
(53, '46', 18, NULL, '2025-01-02 00:19:51', '2025-01-02 00:19:51'),
(54, '46', 19, NULL, '2025-01-02 00:21:24', '2025-01-02 00:21:24'),
(55, '47', 19, NULL, '2025-01-02 00:21:24', '2025-01-02 00:21:24'),
(56, '48', 19, NULL, '2025-01-02 00:21:24', '2025-01-02 00:21:24'),
(57, '45', 20, NULL, '2025-01-02 00:22:47', '2025-01-02 00:22:47'),
(58, '46', 20, NULL, '2025-01-02 00:22:47', '2025-01-02 00:22:47'),
(59, '45', 21, NULL, '2025-01-02 00:23:57', '2025-01-02 00:23:57'),
(60, '46', 21, NULL, '2025-01-02 00:23:57', '2025-01-02 00:23:57'),
(61, '47', 21, NULL, '2025-01-02 00:23:57', '2025-01-02 00:23:57'),
(62, '45', 22, NULL, '2025-01-02 00:30:52', '2025-01-02 00:30:52'),
(63, '46', 22, NULL, '2025-01-02 00:30:52', '2025-01-02 00:30:52'),
(64, '45', 23, NULL, '2025-01-02 00:31:44', '2025-01-02 00:31:44'),
(65, '46', 24, NULL, '2025-01-02 00:33:14', '2025-01-02 00:33:14'),
(66, '47', 24, NULL, '2025-01-02 00:33:14', '2025-01-02 00:33:14'),
(67, '46', 25, NULL, '2025-01-02 00:35:06', '2025-01-02 00:35:06'),
(68, '47', 25, NULL, '2025-01-02 00:35:06', '2025-01-02 00:35:06'),
(69, '45', 26, NULL, '2025-01-02 00:36:55', '2025-01-02 00:36:55'),
(70, '46', 26, NULL, '2025-01-02 00:36:55', '2025-01-02 00:36:55'),
(71, '47', 26, NULL, '2025-01-02 00:36:55', '2025-01-02 00:36:55'),
(72, '46', 27, NULL, '2025-01-02 00:39:24', '2025-01-02 00:39:24'),
(73, '47', 27, NULL, '2025-01-02 00:39:24', '2025-01-02 00:39:24'),
(74, '44', 28, NULL, '2025-01-02 00:40:51', '2025-01-02 00:40:51'),
(75, '45', 28, NULL, '2025-01-02 00:40:51', '2025-01-02 00:40:51'),
(76, '46', 28, NULL, '2025-01-02 00:40:51', '2025-01-02 00:40:51'),
(77, '46', 29, NULL, '2025-01-02 00:42:18', '2025-01-02 00:42:18'),
(78, '47', 29, NULL, '2025-01-02 00:42:18', '2025-01-02 00:42:18'),
(79, '43', 30, NULL, '2025-01-02 00:43:35', '2025-01-02 00:43:35'),
(80, '44', 30, NULL, '2025-01-02 00:43:35', '2025-01-02 00:43:35'),
(81, '45', 30, NULL, '2025-01-02 00:43:35', '2025-01-02 00:43:35'),
(82, '46', 30, NULL, '2025-01-02 00:43:35', '2025-01-02 00:43:35'),
(83, '45', 31, NULL, '2025-01-02 00:44:41', '2025-01-02 00:44:41'),
(84, '46', 31, NULL, '2025-01-02 00:44:41', '2025-01-02 00:44:41'),
(85, '45', 32, NULL, '2025-01-02 00:45:52', '2025-01-02 00:45:52'),
(86, '45', 33, NULL, '2025-01-02 00:47:22', '2025-01-02 00:47:22'),
(87, '46', 33, NULL, '2025-01-02 00:47:22', '2025-01-02 00:47:22'),
(88, '46', 34, NULL, '2025-01-02 00:49:20', '2025-01-02 00:49:20'),
(89, '47', 34, NULL, '2025-01-02 00:49:20', '2025-01-02 00:49:20'),
(90, '46', 35, NULL, '2025-01-02 00:51:08', '2025-01-02 00:51:08'),
(91, '47', 35, NULL, '2025-01-02 00:51:08', '2025-01-02 00:51:08'),
(92, '45', 36, NULL, '2025-01-02 00:52:19', '2025-01-02 00:52:19'),
(93, '46', 36, NULL, '2025-01-02 00:52:19', '2025-01-02 00:52:19'),
(94, '45', 37, NULL, '2025-01-02 00:57:34', '2025-01-02 00:57:34'),
(95, '46', 37, NULL, '2025-01-02 00:57:34', '2025-01-02 00:57:34'),
(96, '46', 38, NULL, '2025-01-02 00:59:00', '2025-01-02 00:59:00'),
(97, '47', 38, NULL, '2025-01-02 00:59:00', '2025-01-02 00:59:00'),
(98, '45', 39, NULL, '2025-01-02 01:00:08', '2025-01-02 01:00:08'),
(99, '46', 40, NULL, '2025-01-02 01:01:23', '2025-01-02 01:01:23'),
(100, '45', 41, NULL, '2025-01-02 01:02:57', '2025-01-02 01:02:57'),
(101, '46', 41, NULL, '2025-01-02 01:02:57', '2025-01-02 01:02:57'),
(102, '46', 42, NULL, '2025-01-02 01:04:31', '2025-01-02 01:04:31');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin SepatuStore', 'team@sepatustore.com', NULL, '$2y$12$3UyBalzzEO2Z.aH25gACK.yOxtx1.u6gKCUeQc3iK/hXzqoqf.Fsq', NULL, '2024-12-20 08:35:44', '2024-12-20 08:35:44'),
(2, 'Admin1', 'alhusain@sample.com', NULL, '$2y$12$wNXFouzBZ49r9rGXBbexhOtgblgXM3e/3FCf/MZQMvBq.QBGf8WEq', NULL, '2024-12-30 21:44:52', '2024-12-30 21:44:52');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `brands_name_unique` (`name`),
  ADD UNIQUE KEY `brands_slug_unique` (`slug`);

--
-- Indeks untuk tabel `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indeks untuk tabel `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indeks untuk tabel `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indeks untuk tabel `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indeks untuk tabel `product_transactions`
--
ALTER TABLE `product_transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_transactions_shoe_id_foreign` (`shoe_id`),
  ADD KEY `product_transactions_promo_code_id_foreign` (`promo_code_id`);

--
-- Indeks untuk tabel `promo_codes`
--
ALTER TABLE `promo_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indeks untuk tabel `shoes`
--
ALTER TABLE `shoes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shoes_category_id_foreign` (`category_id`);

--
-- Indeks untuk tabel `shoe_photos`
--
ALTER TABLE `shoe_photos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shoe_photos_shoe_id_foreign` (`shoe_id`);

--
-- Indeks untuk tabel `shoe_sizes`
--
ALTER TABLE `shoe_sizes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shoe_sizes_shoe_id_foreign` (`shoe_id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `product_transactions`
--
ALTER TABLE `product_transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `promo_codes`
--
ALTER TABLE `promo_codes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `shoes`
--
ALTER TABLE `shoes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT untuk tabel `shoe_photos`
--
ALTER TABLE `shoe_photos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=134;

--
-- AUTO_INCREMENT untuk tabel `shoe_sizes`
--
ALTER TABLE `shoe_sizes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `product_transactions`
--
ALTER TABLE `product_transactions`
  ADD CONSTRAINT `product_transactions_promo_code_id_foreign` FOREIGN KEY (`promo_code_id`) REFERENCES `promo_codes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_transactions_shoe_id_foreign` FOREIGN KEY (`shoe_id`) REFERENCES `shoes` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `shoes`
--
ALTER TABLE `shoes`
  ADD CONSTRAINT `shoes_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `shoe_photos`
--
ALTER TABLE `shoe_photos`
  ADD CONSTRAINT `shoe_photos_shoe_id_foreign` FOREIGN KEY (`shoe_id`) REFERENCES `shoes` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `shoe_sizes`
--
ALTER TABLE `shoe_sizes`
  ADD CONSTRAINT `shoe_sizes_shoe_id_foreign` FOREIGN KEY (`shoe_id`) REFERENCES `shoes` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
