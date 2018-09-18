@extends('layouts.master')

@section('content')

<div class="container">
          <div class="row">
            <div class="col-xs-12">
            </div>
          </div>
        </div>


        <div class="b-title-page b-title-page_w_bg">
          <div class="container">
            <div class="row">
              <div class="col-xs-12">
                <h1 class="b-title-page__title shuffle">Shopping Cart</h1>
              </div>
            </div>
          </div>
        </div>


        <div class="container">
          
          <div class="row">
            <div class="col-md-9 ">
                
                <div>
                  @if (session()->has('success_message'))
                       <div class="alert alert-success">
                        {{ session()->get('success_message')}}
                      </div>
                      @endif


                      @if(count($errors) > 0)
                      <div class="alert alert-danger">
                        <ul>
                          @foreach ($errors->all as $error)
                          <li>{{ $error }}</li>
                          @endforeach
                        </ul>
                      </div>
                      @endif
                </div>
                        
                        @if (Cart::count() > 0)


                   <h3>{{ Cart::count() }} Item(s) in Shopping Cart</h3>
                <div class="woocommerce">


<div class="b-table b-cart-table ">
  <table class="shop_table shop_table_responsive cart table" cellspacing="0">
    <thead>
      <tr>
        <td class="product-thumbnail">&nbsp;</td>
        <td class="product-name"><span>Product</span></td>
        <td class="product-price"><span>Price</span></td>
        <td class="product-quantity"><span>Quantity</span></td>
        <td class="product-subtotal"><span>Total</span></td>
      </tr>
    </thead>
    <tbody>
                @foreach (Cart::content() as $item)
                <tr class="cart_item">
            <td class="product-thumbnail">
              <a href="{{ route('shop.show', $item->model->slug )}}">
                                <img width="180" height="180" src="{{ asset('storage/'.$item->model->image) }}" class="attachment-shop_thumbnail size-shop_thumbnail wp-post-image">
                            </a>            </td>
  
            <td data-title="Product">
              <div class="caption">
              <a class="product-name" href="{{ route('shop.show', $item->model->slug ) }}">{{ $item->model->name }}</a>              </div>
            </td>
  
            <td class="product-price" data-title="Price">
              <span class="product-price total-price">
              <span class="woocommerce-Price-amount amount"><span class="woocommerce-Price-currencySymbol">KSH</span>{{ $item->model->price }}</span>                </span>
            </td>
  
            <td class="qty">
              
                  
                      <select class="quantity" data-id="{{ $item->rowId }}">
                                @for ($i = 1; $i < 5 + 1 ; $i++)
                                    <option {{ $item->qty == $i ? 'selected' : '' }}>{{ $i }}</option>
                                @endfor
                            </select>
                    
                    
            </td>
  
            <td class="product-subtotal" data-title="Total">
              <span class="woocommerce-Price-amount amount"><span class="woocommerce-Price-currencySymbol">KSH</span>{{ $item->subtotal }}</span>            </td>
            
                          <form action="{{ route('cart.destroy', $item->rowId) }}" method="POST" >
                            {{ csrf_field() }}
                            {{ method_field('DELETE') }}
                 <button type="Submit" class="btn btn-remove" ><i class="fa fa-trash fa-lg"></i> Remove</button>
                            </form>

                          

          </tr>
           
           

          @endforeach
                <tr>
        <td colspan="6" class="actions">
  
                      <div class="coupon">
  
              <label for="coupon_code">Coupon:</label> <input type="text"  class="input-text"  placeholder="Coupon code"> <input type="submit" class="button" name="apply_coupon" value="Apply Coupon">
  
                          </div>
            
          <a href="{{ route('shop.index') }}" class="btn btn-primary btn-effect"> Continue shopping</a>
  
            
          <input type="hidden"  value="6bbd62fad3"><input type="hidden" >       </td>
      </tr>
  
          </tbody>
  </table>
</div>



<div class="cart-collaterals">

  <div class="cart_totals calculated_shipping">

  
  <h2>Cart Totals</h2>

  <table cellspacing="0" class="shop_table shop_table_responsive">

    <tbody><tr class="cart-subtotal">
      <th>Subtotal</th>
      <td data-title="Subtotal"><span class="woocommerce-Price-amount amount"><span class="woocommerce-Price-currencySymbol">KSH</span>{{ Cart::subtotal() }}</span></td>
    </tr>
    <tr class="order-toutal">
      <th>Total</th>
      <td data-title="Total"><strong><span class="woocommerce-Price-amount amount"><span class="woocommerce-Price-currencySymbol">KSH</span>{{ Cart::total() }}</span></strong> </td>
    </tr>

    
  </tbody></table>

  <div class="wc-proceed-to-checkout">
    
<a href="{{ route('checkout.index')}}" class="checkout-button button alt wc-forward">
  Proceed to Checkout</a>
  </div>
            </div>
                   </div>
                        </div>

          @else
              <h3> No Items in Cart!</h3>
              <div class="spacer"></div>
              <a href="{{ route('shop.index') }}" class="btn btn-primary btn-effect"> Continue shopping</a>
              <div class="spacer"></div>
          @endif              
            </div>         
          </div>
        </div>
        @endsection
            
            @section('extra-js')
            <script src="{{ asset('js/app.js')}}"></script>
               <script>
                 (function(){

                       const classname = document.querySelectorAll('.quantity')


                        Array.from(classname).forEach(function(element) {
                          element.addEventListener('change', function() {

                             const id = element.getAttribute('data-id')

                                axios.patch(`/cart/${id}`, {
                                  quantity: this.value
                                  })
                                  .then(function (response) {
                                    //console.log(response);
                                    window.location.href = '{{ route('cart.index') }}'
                                  })
                                  .catch(function (error) {
                                   // console.log(error);
                                    window.location.href = '{{ route('cart.index') }}'
                                  });
                             })

                        })
           

                 })();
               </script>
            @endsection