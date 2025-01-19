<?php

namespace App\Providers;

use App\Repositories\CategoryRepository;
use App\Repositories\Contracts\CategoryRepositoryInterface;
use App\Repositories\Contracts\OrderRepositoryInterface;
use App\Repositories\Contracts\PromoCodeRepositoryInterface;
use App\Repositories\Contracts\ShoeRepositoryInterface;
use App\Repositories\OrderRepository;
use App\Repositories\PromoCodeRepository;
use App\Repositories\ShoeRepository;
use Illuminate\Support\ServiceProvider;
use App\Service\OrderService;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     */
    public function register(): void
    {
        $this->app->singleton(OrderService::class, function ($app) {
            return new OrderService(
                $app->make(PromoCodeRepositoryInterface::class),
                $app->make(CategoryRepositoryInterface::class),
                $app->make(OrderRepositoryInterface::class),
                $app->make(ShoeRepositoryInterface::class)
            );
        });
        $this->app->singleton(CategoryRepositoryInterface::class, CategoryRepository::class);
        
        $this->app->singleton(ShoeRepositoryInterface::class, ShoeRepository::class);
        
        $this->app->singleton(OrderRepositoryInterface::class, OrderRepository::class);
        
        $this->app->singleton(PromoCodeRepositoryInterface::class, PromoCodeRepository::class);

        $this->app->singleton(\App\Services\FrontService::class, \App\Services\FrontService::class);
    }

    /**
     * Bootstrap any application services.
     */
    public function boot(): void
    {
        //
    }
}
