<?php

use App\Http\Controllers\FrontController;
use App\Http\Controllers\OrderController;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ContactController;

Route::get('/', [FrontController::class, 'index'])->name('front.index');

Route::get('/browse/{{category:slug}}', [FrontController::class, 'category'])->name('front.category');

Route::get('/details/{shoe:slug}', [FrontController::class, 'details'])->name('front.details');

Route::post('/order/begin/{{shoe:slug}}', [OrderController::class, 'saveOrder'])->name('front.save_order');

// Rute untuk memulai pemesanan dari tombol Buy Now
Route::post('/order/buy-now/{shoe:slug}', [OrderController::class, 'buyNow'])->name('front.buy_now');


Route::get('/order/booking/customer-data', [OrderController::class, 'customerData'])->name('front.customer_data');
Route::post('/order/booking/customer-data/save', [OrderController::class, 'saveCustomerData'])->name('front.save_customer_data');

Route::get('/order/payment', [OrderController::class, 'payment'])->name('front.payment');
Route::post('/order/payment/confirm', [OrderController::class, 'paymentConfirm'])->name('front.payment_confirm');

Route::get('/order/finished/{{productTransaction:id}}', [OrderController::class, 'orderFinished'])->name('front.order_finished');

Route::get('/contact', [ContactController::class, 'index'])->name('contact.index');
Route::post('/contact', [ContactController::class, 'store'])->name('contact.store');


