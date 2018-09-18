
@extends('layouts.master')

@section('extra-css')
<script src="https://js.stripe.com/v3/"></script>
@endsection


@section('content')

    <div class="b-title-page b-title-page_w_bg">
      <div class="container">
        <div class="row">
          <div class="col-xs-12">
            <h1 class="b-title-page__title shuffle">Checkout</h1>
            <ul class="b-title-page__list list-inline">
              <li><a href="catalog-list.html">my account</a></li>
              <li><a href="catalog-list.html">my address</a></li>
              <li><a href="catalog-list.html">my order</a></li>
              <li><a href="catalog-list.html">Reset Password</a></li>
            </ul>
          </div>
        </div>
      </div>
    </div>   

          <div class="container">

        @if (session()->has('success_message'))
            <div class="spacer"></div>
            <div class="alert alert-success">
                {{ session()->get('success_message') }}
            </div>
        @endif

        @if(count($errors) > 0)
            <div class="spacer"></div>
            <div class="alert alert-danger">
                <ul>
                    @foreach ($errors->all() as $error)
                        <li>{!! $error !!}</li>
                    @endforeach
                </ul>
            </div>
        @endif

        <h1 class="checkout-heading stylish-heading">Checkout</h1>
        <div class="checkout-section">
            <div>
               <div class="woocommerce">
                <form action="{{ route('checkout.store') }}" method="POST" id="payment-form">
                    {{ csrf_field() }}
                    <h2>Billing Details</h2>

                    <div class="form-group">
                        <label for="email">Email Address</label> <abbr class="required" title="required">*</abbr>
                        @if (auth()->user())
                            <input type="email" class="form-control" id="email" name="email" value="{{ auth()->user()->email }}" readonly>
                        @else
                            <input type="email" class="form-control" id="email" name="email" value="{{ old('email') }}" required>
                        @endif
                    </div>
                    <div class="form-group">
                        <label for="name">Name</label> <abbr class="required" title="required">*</abbr>
                        <input type="text" class="form-control" id="name" name="name" value="{{ old('name') }}" required>
                    </div>
                    <div class="form-group">
                        <label for="address">Address</label>
                        <input type="text" class="form-control" id="address" name="address" value="{{ old('address') }}" required>
                    </div>

                    <div class="half-form">
                        <div class="form-row form-row form-row-first ">
                            <label for="city">City</label>
                            <input type="text" class="form-control" id="city" name="city" value="{{ old('city') }}" required>
                        </div>
                        <div class="form-row form-row form-row-last ">
                            <label for="province">County</label>
                            <input type="text" class="form-control" id="province" name="province" value="{{ old('province') }}" required>
                        </div>
                    </div> <!-- end half-form -->

                    <div class="half-form">
                        <div class="form-row form-row form-row-first ">
                            <label for="postalcode">Postal Code</label>
                            <input type="text" class="form-control" id="postalcode" name="postalcode" value="{{ old('postalcode') }}" required>
                        </div>
                        <div class="form-row form-row form-row-last ">
                            <label for="phone">Phone</label> 
                            <input type="text" class="form-control" id="phone" name="phone" value="{{ old('phone') }}" required>
                        </div>
                    </div> <!-- end half-form -->

                    <div class="spacer"></div>

                    <h2>Payment Details</h2>

                    <div class="form-group">
                        <label for="name_on_card">Name on Card</label>
                        <input type="text" class="form-control" id="name_on_card" name="name_on_card" value="">
                    </div>

                    <div class="form-group">
                        <label for="card-element">
                          Credit or debit card
                        </label>
                        <div id="card-element">
                          <!-- a Stripe Element will be inserted here. -->
                        </div>

                        <!-- Used to display form errors -->
                        <div id="card-errors" role="alert"></div>
                    </div>
                    <div class="spacer"></div>

                    <button type="submit" id="complete-order" class="button alt">Complete Order</button>


                </form>
              </div>
            </div>
                       
                        <div class="woocommerce">
                      <h3 id="order_review_heading">Your order</h3>
              <div id="order_review" class="woocommerce-checkout-review-order">
                <table class="shop_table woocommerce-checkout-review-order-table">
                  <thead>
                    <tr>
                      <th class="product-name">Product</th>
                      <th class="product-total">Total</th>
                    </tr>
                  </thead>
                  <tbody>
                    @foreach (Cart::content() as $item)
                    <tr class="cart_item">
                      <td class="product-name"> {{ $item->model->name }}&nbsp; <strong class="product-quantity">× {{ $item->qty }}</strong></td>
                      <hr>
                      <td class="product-total"><span class="woocommerce-Price-amount amount"><span class="woocommerce-Price-currencySymbol">KSH</span>{{ $item->subtotal }}</span></td>
                    </tr>
                    @endforeach
                  </tbody>
                  <tfoot>
                    <tr class="order-total">
                      <th>Total</th>
                      <td><strong><span class="woocommerce-Price-amount amount"><span class="woocommerce-Price-currencySymbol">KSH</span>{{ Cart::total() }}</span></strong></td>
                    </tr>
                  </tfoot>
                </table>
                
              </div>
            </div>
             
              <br><br>



        </div> <!-- end checkout-section -->
    </div>

    @endsection

     @section('extra-js')
             <script>
                 (function(){
                                    // Create a Stripe client.
                              var stripe = Stripe('pk_test_qKDvo0U0UnqqDgDaktayenvF');

                              // Create an instance of Elements.
                              var elements = stripe.elements();

                              // Custom styling can be passed to options when creating an Element.
                              // (Note that this demo uses a wider set of styles than the guide below.)
                              var style = {
                                base: {
                                  color: '#32325d',
                                  lineHeight: '18px',
                                  fontFamily: '"Roboto","Helvetica Neue", Helvetica, sans-serif',
                                  fontSmoothing: 'antialiased',
                                  fontSize: '16px',
                                  '::placeholder': {
                                    color: '#aab7c4'
                                  }
                                },
                                invalid: {
                                  color: '#fa755a',
                                  iconColor: '#fa755a'
                                }
                              };

                              // Create an instance of the card Element.
                              var card = elements.create('card', {
                                style: style,
                                hidePostalCode: true
                              });

                              // Add an instance of the card Element into the `card-element` <div>.
                              card.mount('#card-element');

                              // Handle real-time validation errors from the card Element.
                              card.addEventListener('change', function(event) {
                                var displayError = document.getElementById('card-errors');
                                if (event.error) {
                                  displayError.textContent = event.error.message;
                                } else {
                                  displayError.textContent = '';
                                }
                              });

                              // Handle form submission.
                              var form = document.getElementById('payment-form');
                              form.addEventListener('submit', function(event) {
                                event.preventDefault();

                                //disable the submit button to prevent repeated clicks
                                document.getElementById('complete-order').disabled = true;

                                  var options = {
                                          name: document.getElementById('name_on_card').value,
                                          address_line1: document.getElementById('address').value,
                                          address_city: document.getElementById('city').value,
                                          address_state: document.getElementById('province').value,
                                          address_zip: document.getElementById('phone').value
                                        }

                                stripe.createToken(card, options).then(function(result) {
                                  if (result.error) {
                                    // Inform the user if there was an error.
                                    var errorElement = document.getElementById('card-errors');
                                    errorElement.textContent = result.error.message;

                                         // Enable the submit button
                                       document.getElementById('complete-order').disabled = false;
                                  } else {
                                    // Send the token to your server.
                                    stripeTokenHandler(result.token);
                                  }
                                });
                              });

                              function stripeTokenHandler(token) {
                              // Insert the token ID into the form so it gets submitted to the server
                              var form = document.getElementById('payment-form');
                              var hiddenInput = document.createElement('input');
                              hiddenInput.setAttribute('type', 'hidden');
                              hiddenInput.setAttribute('name', 'stripeToken');
                              hiddenInput.setAttribute('value', token.id);
                              form.appendChild(hiddenInput);

                              // Submit the form
                              form.submit();
                            }
                                           })();
             </script>
     @endsection