<?php

namespace App\Http\Controllers;

use App\Http\Requests\StoreOrderRequest;
use App\Service\OrderService;
use App\Models\Shoe;
use Illuminate\Http\Request;

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

        return redirect()->route('front.booking', $shoe->slug);
    }
}
