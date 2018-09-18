@extends('layouts.master')

@section('extra-css')
     <style>
       /* Set the size of the div element that contains the map */
      #map {
        height: 400px;  /* The height is 400 pixels */
        width: 100%;  /* The width is the width of the web page */
       }
    </style>
@endsection


@section('content')
        
      <div class="wrap-content">
        <div class="container">
          <div class="row">
            <div class="col-xs-12">
              <ol class="breadcrumb">
                
              </ol>
            </div>
          </div>
        </div>
      
        <div class="container">
          <div class="row">
            <div class="col-md-6">
              <section class="section-type-1">
                <h2 class="ui-title-block-2">Send us an Email:</h2>
                <div id="success"></div>
                <form id="contactForm" action="#" method="post" class="form-contacts ui-form">
                  <div class="row">
                    <div class="col-md-6">
                      <input id="user-name" type="text" name="user-name" placeholder="hive@beehappy.co.ke" required class="form-control">
                      <input id="user-email" type="email" name="user-email" placeholder="Email*" class="form-control">
                    </div>
                    <div class="col-md-6">
                      <input id="user-subject" type="text" name="user-subject" placeholder="Subject" class="form-control last-block_mrg-btn_0">
                      <input id="user-phone" type="tel" name="user-phone" placeholder="Phone" class="form-control">
                    </div>
                  </div>
                  <div class="row">
                    <div class="col-xs-12">
                      <textarea id="user-message" rows="5" placeholder="Enter your review*" required class="form-control"></textarea>
                      <button class="btn btn-primary btn-lg btn-effect">Send Message</button>
                    </div>
                  </div>
                </form>
              </section>
            </div>
            <div class="col-md-5 col-md-offset-1">
              <section class="b-contact">
                <h2 class="ui-title-block-2">Contact Info:</h2>
                
                <div class="b-info">
                  <div class="row">
                    <div class="col-md-4">
                      <div class="b-info__name"><i class="icon fa fa-map-marker"></i> Address:</div>
                    </div>
                    <div class="col-md-8">
                      <div class="b-info__info">Ole Sangale, Madaraka. Nairobi, Kenya, </div>
                    </div>
                  </div>
                  <div class="row">
                    <div class="col-md-4">
                      <div class="b-info__name"><i class="icon fa fa-phone"></i> Phone:</div>
                    </div>
                    <div class="col-md-8">
                      <div class="b-info__info">+254 0700-453-377</div>
                    </div>
                  </div>
                  <div class="row">
                    <div class="col-md-4">
                      <div class="b-info__name"><i class="icon fa fa-envelope"></i> Email:</div>
                    </div>
                    <div class="col-md-8">
                      <div class="b-info__info"><a href="mailto:support@trendsetter.com">hive@beehappy.co.ke</a></div>
                    </div>
                  </div>
                  <div class="row">
                    <div class="col-md-4">
                      <div class="b-info__name"><i class="icon fa fa-user"></i> Share:</div>
                    </div>
                    <div class="col-md-8">
                      <div class="b-info__info">
                                <ul class="social-net list-inline">
                                  <li class="social-net__item"><a href="https://www.facebook.com/beehappyke/" class="social-net__link"><i class="icon fa fa-facebook"></i></a></li>
                    <li class="social-net__item"><a href="https://twitter.com/beehappyke?lang=en"><i class="icon fa fa-twitter"></i></a></li>
                    <li class="social-net__item"><a href="https://www.instagram.com/explore/tags/beehappyke/" class="social-net__link"><i class="icon fa fa-instagram"></i></a></li>
                   
                                </ul>
                                <!-- end social-list-->
                      </div>
                    </div>
                  </div>
                </div>
                <!-- end .b-info-->
                
                
              </section>
            </div>
          </div>
        </div>
        <div class="b-form-newsletter bg-grey">
          <form class="b-form-newsletter__form">
            <div class="b-form-newsletter__title">Newsletter</div>
            <input type="email" placeholder="Enter your email" required="required" class="form-control"/>
            <button class="btn btn-primary btn-effect">Choose To Bee Happy</button>
          </form>
        </div>

        @endsection
        @section('extra-js')
          <script>
            // Initialize and add the map
            function initMap() {
              // The location of Uluru
              var uluru = {lat: -25.344, lng: 131.036};
              // The map, centered at Uluru
              var map = new google.maps.Map(
                  document.getElementById('map'), {zoom: 4, center: uluru});
              // The marker, positioned at Uluru
              var marker = new google.maps.Marker({position: uluru, map: map});
            }
                </script>
                <!--Load the API from the specified URL
                * The async attribute allows the browser to render the page while the API loads
                * The key parameter will contain your own API key (which is not needed for this tutorial)
                * The callback parameter executes the initMap() function
                -->
                <script async defer
                src="https://maps.googleapis.com/maps/api/js?key=YOUR_API_KEY&callback=initMap">
                </script>
        @endsection

        
