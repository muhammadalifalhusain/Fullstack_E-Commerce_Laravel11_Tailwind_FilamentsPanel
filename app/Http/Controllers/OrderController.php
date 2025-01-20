<?php

namespace App\Http\Controllers;

use App\Http\Requests\StoreOrderRequest;
use App\Service\OrderService;
use App\Models\Shoe;
use App\Http\Requests\StoreCustomerDataRequest;
use App\Http\Requests\StorePaymentRequest;
use App\Models\ProductTransaction;
use Illuminate\Http\Request;
use Illuminate\Queue\Jobs\RedisJob;

class OrderController extends Controller
{
    protected $orderService;
    public function __construct(OrderService $orderService)
    {
        $this->orderService = $orderService;
    }

    public function saveOrder(StoreOrderRequest $request, Shoe $shoe)
    {
        $validated = $request->validated();
        $validated['shoe_id'] = $shoe->id;
        $this->orderService->beginOrder($validated);

        return redirect()->route('front.booking');
    }

    public function booking()
    {
        $data = $this->orderService->getOrderDetails();
        return view('order.order', $data);
    }

    public function customerData()
    {
        $data = $this->orderService->getOrderDetails();
        return view('order.customer_data', $data);    
    }

    public function saveCustomerData(StoreCustomerDataRequest $request)
    {
        $validated = $request->validated();
        $this->orderService->updateCustomerData($validated);

        return redirect()->route('front.payment');
    }

    public function payment()
    {
        $data = $this->orderService->getOrderDetails();
        return view('order.payment', $data);
    }

    public function paymentConfirm(StorePaymentRequest $request)
    {
        $validated = $request->validated();
        $productTransactionId = $this->orderService->paymentConfirm($validated);

        if($productTransactionId)
        {
            return redirect()->route('front.order_finished', $productTransactionId);
        }
        return redirect()->route('front.index')->withErrors(['error' => 'Pembayaran Gagal. Silahkan ulangi kembali']);
    }

    public function orderFinished(ProductTransaction $productTransaction)
    {
        return view('order.finished', compact('productTransaction'));
    }

    public function buyNow(Request $request, Shoe $shoe)
{
    // Menyimpan informasi pesanan awal
    $orderData = [
        'shoe_id' => $shoe->id,
        'shoe_size' => $request->input('shoe_size', null), // Pastikan ada input ukuran
        'quantity' => $request->input('quantity', 1), // Default quantity = 1
    ];

    // Simpan data ke session
    $this->orderService->beginOrder($orderData);

    // Redirect ke halaman detail order
    return redirect()->route('front.booking');
}

    
}
