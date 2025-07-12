<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use Illuminate\Pagination\Paginator;
use Illuminate\Support\Facades\View;

use App\Models\Order;
use App\Models\Cart;
use Auth;
use Illuminate\Support\Carbon;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     */
    public function register(): void
    {
        //
    }

    /**
     * Bootstrap any application services.
     */
    

    public function boot(): void
    {
        Paginator::useBootstrapFive();
        View::composer('layouts.*', function ($view) {
            $cartCount = 0;
             if (Auth::guard('admin')->check()) {
                $user = Auth::guard('admin')->user();
                $userId = $user->id;

                $orderCount = Order::count() + 1;

                $reg = Carbon::now()->format('Ymd') . str_pad($userId, 2, '0', STR_PAD_LEFT) . str_pad($orderCount, 4, '0', STR_PAD_LEFT);

                 $cartCount = Cart::where('reg', $reg)->count();
             }
            
            $view->with([
                'cart' => $cartCount
            ]);
        });
    }
}
