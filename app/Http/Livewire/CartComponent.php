<?php

namespace App\Http\Livewire;

use Livewire\Component;
use Cart;
use Illuminate\Support\Facades\Auth;

class CartComponent extends Component
{
    public function increaseQuantity($rowId)
    {
       $product = Cart::get($rowId);
       $qty = $product->qty  + 1;
       Cart::update($rowId,$qty);
    }
    public function decraseQuantity($rowId)
    {
        $product = Cart::get($rowId);
       $qty = $product->qty  - 1;
       Cart::update($rowId,$qty);
    }
    public function destroy($rowId)
    {
        Cart::remove($rowId);
        session()->flash('success_message','Item đã được xóa');
    }
    public function destroyAll()
    {
        Cart::destroy();
    }
    public function checkout()
    {
        if (Auth::check()) {
            return redirect()->route('checkout');
        }else {
            return redirect()->route('login');
        }
    }
    // public function setAmountForCheckout()
    // {
    //     if (session()->has()) {

    //     }
    // }
    public function render()
    {
        return view('livewire.cart-component')->layout('layouts.base');
    }
}
