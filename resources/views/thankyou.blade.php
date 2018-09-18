 @extends('layouts.master')
 @section('content')
 <div class="b-title-page b-title-page_w_bg">
          <div class="container">
            <div class="row">
              <div class="col-xs-12">
                <h1 class="b-title-page__title shuffle">My account</h1>
                <ul class="b-title-page__list list-inline">
                  <li><a href="dashboard.html">my account</a></li>
                 <li><a href="orders.html">my order</a></li>
                  <li><a href="addresses.html">my address</a></li>
                  <li><a href="details.html">my details</a></li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <!-- end b-title-page-->


                <div class="container">
          
          <div class="row">
            <div class="col-md-12 ">
              
                
         <div class="woocommerce">
  
    <p class="woocommerce-thankyou-order-received">Thank you. Your order has been received.</p>

    
    <div class="clear"></div>

  
  <p>For recycling the honey cans please contact us!</p>
             
             

                           </div>

                           <p class="woocommerce-thankyou-order-received"><a href="{{ route('welcome')}}">Go Back Home</a></p>

                
                
            </div>
              
          
          </div>
        </div>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br><br>
        <div class="b-form-newsletter bg-grey">
          <form class="b-form-newsletter__form">
            <div class="b-form-newsletter__title">Newsletter</div>
            <input type="email" placeholder="Enter your email" required="required" class="form-control"/>
            <button class="btn btn-primary btn-effect">subscribe</button>
          </form>
        </div>
        
       
        @endsection