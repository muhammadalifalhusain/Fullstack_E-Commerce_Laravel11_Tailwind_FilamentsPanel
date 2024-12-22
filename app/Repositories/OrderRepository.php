<?php
namespace App\Repositories;
use App\Models\BookingTransaction;
use App\Models\ProductTransaction;
use App\Repositories\Contracts\OrderRepositoryInterface;
use Illuminate\Support\Facades\Session;

class OrderRepository implements OrderRepositoryInterface
{
    public function createTransaction(array $data)
    {
        return ProductTransaction::create($data);
    }

    public function findByTrxIdAndPhoneNumber($bookingTrxId, $phoneNumber)
    {
        return ProductTransaction::where('booking_trx_id', $bookingTrxId)
                                    ->where('phone_number', $phoneNumber)
                                    ->first();
    }

    public function saveToSession(array $data)
    {
        Session::put('orderData', $data);
    }

    public function getOrderDataFromSession()
    {
        return session('orderData', []);
    }

    public function updateSessionData(array $data)
    {
        $orderData = session('orderData', []);
    }
}