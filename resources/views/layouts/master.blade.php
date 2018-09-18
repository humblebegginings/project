<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8"/>
    <meta http-equiv="x-ua-compatible" content="ie=edge"/>
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <title>Bee Happy</title>
    <meta content="" name="description"/>
    <meta content="" name="keywords"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <meta content="telephone=no" name="format-detection"/>
    <meta name="HandheldFriendly" content="true"/>
    
       @yield('extra-css')

    <link rel="stylesheet" href="{{asset('uploads/assets/css/master.css') }}"/>
    <link rel="icon" type="image/x-icon" href="favicon.ico"/>
    <link rel="stylesheet" type="text/css" href="//fonts.googleapis.com/css?family=Satisfy" />
  </head>
  <body>
    <!-- Loader--> 
  <div class="screen-loader">
       <div class="loading"> 
        <span class="loader_span"> 
            <span class="loader_right"></span> 
            <span class="loader_left"></span> 
        </span>
    </div>
      <div class="sl-top"></div>
      <div class="sl-bottom"></div>
   </div>      
    <!-- Loader end-->
    <div  class="l-theme">
<div class="demo-body demo-body-2h demo-header-2">
        <header class="header header-2 header-topbar-view header-normal-width navbar-fixed-top header-logo-black header-topbarbox-1-left header-topbarbox-2-right header-navibox-1-left header-navibox-2-right header-navibox-3-right">
          <div class="top-bar clearfix">
            <div class="header-topbarbox-1 clearfix">
              <div class="header-topbarbox__item btn-group">
                <button type="button" data-toggle="dropdown" class="header-topbarbox__btn dropdown-toggle">BEE</button>
                
              </div>
              <div class="header-topbarbox__item btn-group">
                <button type="button" data-toggle="dropdown" class="header-topbarbox__btn dropdown-toggle">HAPPY</button>
                
              </div>
              <div class="header-topbarbox__item header-topbarbox__item_bd-top">ORDER ONLINE OR CALL US  070-045-33-77</div>
            </div>
            <div class="header-topbarbox-2 clearfix">
              <!-- login and register-->
               <!--
                <div class="header-topbarbox__item">

                  
                    
                        <a href="#">Home</a>
                    
                        <a href="{{ route('login') }}">Login</a>
                        or
                        <a href="{{ route('register') }}">Register</a>

        
                    
                </div>
                -->
                
              <!-- /login and register-->
            </div>
          </div>
          <nav id="nav" class="navbar">
            <div class="container">
              <div class="header-navibox-1">
                <!-- Mobile Trigger Start-->
                <button class="menu-mobile-button visible-xs-block js-toggle-mobile-slidebar toggle-menu-button"><i class="toggle-menu-button-icon"><span></span><span></span><span></span><span></span><span></span><span></span></i></button>
                <!-- Mobile Trigger End--><a href="{{ route('welcome')}}" class="navbar-brand scroll"><img src="assets/media/general/logo.png" alt="logo" class="normal-logo"/><img src="{{ asset('uploads/assets/media/general/logo-dark.png') }}" alt="logo" class="scroll-logo hidden-xs"/></a>
              </div>
              <div class="header-navibox-3">
                <button class="js-toggle-screen toggle-menu-button hidden-xs"><i class="toggle-menu-button-icon"><span></span><span></span><span></span><span></span><span></span><span></span></i></button><a href="#" class="btn_header_search"><i class="fa fa-search"></i></a>

                <div class="header-cart"><a href="{{ route('cart.index') }}"><i aria-hidden="true" class="fa fa-shopping-cart"></i></a><span class="header-cart-count bg-primary">

                  @if( Cart::instance('default')->count() > 0)

                  {{ Cart::instance('default')->count() }}
                  @endif
                   </span>
                </div>

              </div>
              <div class="header-navibox-2">
                {{ menu('main','layouts.menus.main') }}
              </div>
            </div>
          </nav>
        </header>
        <!-- end .header-->
        
        
      </div>

          @yield('content')

        <!-- end b-form-newsletter-->
        <footer class="footer footer-type-1 bg-grey">
          <div class="footer__main">
            <div class="container">
              <div class="row">
                <div class="col-md-8 col-md-push-4">
                  <div class="row">
                   

                      <ul style="float: right; text-decoration: none;">
                       <h3 class="footer-section__title">About</h3>
                        <h3 class="footer-section__title">Blog</h3>
                        <h3 class="footer-section__title">Contact us</h3>
                      </ul>

                  </div>
                </div>
                
                 
                  
              
                <div class="col-md-4 col-md-pull-8">
                  <ul class="social-net list-inline">

                     <li class="social-net__item"><a href="https://www.facebook.com/beehappyke/" class="social-net__link"><i class="icon fa fa-facebook-square" arial-hidden="true" style="color: #ffa300; "></i></a></li>
                                      
                    <li class="social-net__item"><a href="https://twitter.com/beehappyke?lang=en" class="social-net__link"><i class="icon fa fa-twitter" style="color: #ffa300; "></i></a></li>

                    <li class="social-net__item"><a href="https://www.instagram.com/explore/tags/beehappyke/" class="social-net__link"><i class="icon fa fa-instagram" aria-hidden="true" style="color: #ffa300;"></i></a></li>

                    
                   
                   
                  </ul>
                  <!-- end social-list-->
                  <div class="copyright"><span style="color: grey">©  2018 bee happy Enterprises Ltd.
  ® All Right Reserved</span></div>
                </div>
              </div>
            </div>
          </div>
        </footer>    <!-- end .footer-type-1-->
    <!-- ++++++++++++-->
    <!-- MAIN SCRIPTS-->
    <!-- ++++++++++++-->
    
      @yield('extra-js')
    <script src="{{asset ('uploads/assets/libs/jquery-1.12.4.min.js') }}"></script>
    <script src="{{asset ('uploads/assets/libs/jquery-migrate-1.2.1.js') }}"></script>
    <!-- Bootstrap-->
    <script src="{{asset('uploads/assets/libs/bootstrap/bootstrap.min.js') }}"></script>
    <!-- User customization-->
    <script src="{{asset('uploads/assets/js/custom.js') }}"></script>
    <!-- Other slider-->
    <script src="{{asset('uploads/assets/plugins/owl-carousel/owl.carousel.min.js') }}"></script>
    <!-- Pop-up window-->
    <script src="{{asset('uploads/assets/plugins/magnific-popup/jquery.magnific-popup.min.js') }}"></script>
    <!-- Headers scripts-->
    <script src="{{asset('uploads/assets/plugins/headers/slidebar.js') }}"></script>
    <script src="{{asset('uploads/assets/plugins/headers/header.js') }}"></script>
    <!-- Select customization-->
    <script src="{{asset('uploads/assets/plugins/bootstrap-select/js/bootstrap-select.min.js') }}"></script>
    <!-- Mail scripts-->
    <script src="{{asset('uploads/assets/plugins/jqBootstrapValidation.js') }}"></script>
    <script src="{{asset('uploads/assets/plugins/contact_me.js') }}"></script>
    <!-- Filter and sorting images-->
    <script src="{{asset('uploads/assets/plugins/isotope/isotope.pkgd.min.js') }}"></script>
    <script src="{{asset('uploads/assets/plugins/isotope/imagesLoaded.js') }}"></script>
    <!-- Progress numbers-->
    <script src="{{asset('uploads/assets/plugins/rendro-easy-pie-chart/jquery.easypiechart.min.js') }}"></script>
    <script src="{{asset('uploads/assets/plugins/rendro-easy-pie-chart/waypoints.min.js') }}"></script>
    <!-- Animations-->
    <script src="{{asset('uploads/assets/plugins/scrollreveal/scrollreveal.min.js') }}"></script>
    <!-- Main slider-->
    <script src="{{asset('uploads/assets/plugins/slider-pro/jquery.sliderPro.min.js') }}"></script>
    <script type="https://js.stripe.com/v3/"></script>



    


  </div>
</body>
</html>