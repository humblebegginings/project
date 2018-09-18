@extends('layouts.master')

@section('extra-css')
     <link href='http://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,700' rel='stylesheet' type='text/css'>

    <link rel="stylesheet" href="{{ asset('uploads/animation-assets/css/reset.css') }}"> <!-- CSS reset -->
    <link rel="stylesheet" href="{{ asset('uploads/animation-assets/css/style.css') }}"> <!-- Resource style -->
@endsection

@section('content')


 <div id="main-slider" data-slider-width="1920px" data-slider-height="985px" data-slider-arrows="false" data-slider-buttons="false" class="main-slider slider-pro">
          <div class="sp-slides">
            <!-- Slide 1-->
            <div class="sp-slide"><img src="{{ asset('uploads/assets/media/components/b-main-slider/bg-2.png') }}" alt="slider" class="sp-image" class="img-responsive/>
              <div class="container">
                <div class="row">
                  <div class="col-xs-10 col-xs-offset-1">
                    <div data-width="100%" data-show-transition="left" data-hide-transition="left" data-show-duration="800" data-show-delay="400" data-hide-delay="400" class="main-slider__label sp-layer"></div>
                    
                        <div class="row">   
                          <section class="cd-intro">
                            <h1 class="cd-headline clip is-full-width">
                              <span style="font-size: 110px; "><strong >Bee</strong></span>
                              <span class="cd-words-wrapper">
                                <b class="is-visible" style="font-size: 110px; color: #fff;">Happy</b>
                                <b style="font-size: 110px; color: #fff;">Very Happy</b>
                                <b style="font-size: 110px; color: #fff;">Healthy</b>
                                <b style="font-size: 110px; color: #fff;">Sweet</b>
                                <b style="font-size: 110px; color: #fff;">Kind</b>
                              </span>
                            </h1>
                          </section> <!-- cd-intro -->
                        </div>




                    <div data-width="100%" data-show-transition="left" data-hide-transition="left" data-show-duration="2000" data-show-delay="1200" data-hide-delay="400" class="sp-layer">
                       <ul class="main-slider__list list-inline">
                       <li><a href="{{ route('shop.index')}}" style="color:black; size: 22px;"><b><h2 style="border-bottom:  5px #ffa300 solid;">RAW HONEY</h2></b></a></li> 
                       
                        <li><a href="{{ route('shop.index')}}" style="color:black; size: 22px; "><b><h2 style="border-bottom:  5px #ffa300 solid;">HONEY & CHILLI</h2></b></a></li> 

                        <li><a href="{{ route('shop.index')}}" style="color:black; size: 22px; "><b><h2 style="border-bottom:  5px #ffa300 solid;">PERSONALIZED JAR</h2></b></a></li>
                      </ul>
                    </div>
                  </div>
                </div>
              </div>
            </div>
   
          </div>
        </div>
        <!-- end main-slider-->

        <div class="section-area">
          <div class="block-table block-table_padd_20">
            <div class="block-table__cell col-md-6">
              <div class="block-table__inner bg-grey-2">
                <section class="b-presentation">
                    
                     <a href="{{ route('personalizedjars.index')}}"><img src="{{ asset('uploads/assets/media/components/b-presentation/b1.jpg') }}" alt="goods" class="b-presentation__img scrollreveal"/></a> 
                      <div class="b-goods__label bg-secondary">PERSONALIZED JAR</div>
                </section>
                <!-- end b-presentation-->
              </div>
            </div>


            
            <div class="block-table__cell col-md-6">
              <div class="block-table__inner bg-grey-2">
                <section class="b-presentation b-presentation_img_left">
                    
                      <video width="100%" height="100%" controls>
                      <source src="{{ asset('uploads/assets/movie.mp4') }}" type="video/mp4">
                      <source src="{{ asset('uploads/assets/movie.ogg') }}" type="video/ogg">
                      Your browser does not support the video tag.
                    </video>

                    </section>
                
              </div>
            </div>



          </div>
          <div class="block-table block-table_padd_20">
            <div class="block-table__cell col-md-4">
              <div class="block-table__inner bg-grey-2">
                <section class="b-presentation b-presentation_sm">
                    <!-- shop now -->
                      <a href="{{ route('shop.index')}}"><img src="{{ asset('uploads/assets/media/components/b-presentation/bs-1.jpg') }}" alt="goods" class="b-presentation__img scrollreveal"/></a> 
                       <div class="b-goods__label bg-secondary">Shop Now</div>
                </section>
                <!-- end b-presentation-->
              </div>
            </div>
            <div class="block-table__cell col-md-4">
              <div class="block-table__inner bg-grey-2">
                <section class="b-presentation b-presentation_sm">
                    
                      <a href="catalog-product.html"><img src="{{ asset('uploads/assets/media/components/b-presentation/bs-2.jpg') }}" alt="goods" class="b-presentation__img scrollreveal"/></a> 
                       <div class="b-goods__label bg-secondary">About Us</div>
                </section>
                <!-- end b-presentation-->
              </div>
            </div>
            <div class="block-table__cell col-md-4">
              <div class="block-table__inner bg-grey-2">
                <section class="b-presentation b-presentation_sm">
                    
                    <a href="catalog-product.html"><img src="{{ asset('uploads/assets/media/components/b-presentation/bs-3.jpg') }}" alt="goods" class="b-presentation__img scrollreveal"/></a> 
                  
                </section>
                <!-- end b-presentation-->
              </div>
            </div>
          </div>
        </div>
        <section class="section-goods-1">

            <div class="row">
              <div class="col-xs-12 col-md-offset-2 col-lg-offset-1">
                <h2 class="ui-title-inner">Popular Products</h2>
              </div>
            </div>
        
          <div data-min480="2" data-min768="3" data-min992="4" data-min1200="6" data-pagination="false" data-navigation="true" data-auto-play="4000" data-stop-on-hover="true" class="owl-carousel owl-theme owl-theme_mod-a enable-owl-carousel js-zoom-gallery">

            @foreach( $products as $product)
            <section class="b-goods b-goods_mod-a">
              <div class="b-goods__inner"><a href="{{ asset('storage/'.$product->image) }}" class="b-goods__img js-zoom-images"><img src="{{ asset('storage/'.$product->image) }}" alt="goods" class="img-responsive"/></a>
                                <h3 class="b-goods__name"><a href="{{ route('shop.show', $product->slug)}}">{{ $product->name }}<a href="{{ route('shop.show', $product->slug)}}"></h3>
                                   <h6 class="b-goods__details"><a href="{{ route('shop.show', $product->slug)}}">{{ $product->details}}</a></h6>

                                  <div class="b-goods__price" style="color:#CCCC00;">KSH {{ $product->price }}</div>

                <div class="b-goods-links"><a href="{{ route('shop.show', $product->slug )}}" class="b-goods-links__item b-goods-links__item_main">View Product</a></div>
              </div>
            </section>
            @endforeach
          
          </div>
        </section>
        <div class="section-blockquote-5 bg-grey">
          <div class="section-blockquote-5__inner">
            <div class="container">
              <div class="row">
                <div class="col-md-7">
                  <blockquote class="b-blockquote b-blockquote-5">
                    <div class="b-blockquote__title">quote</div>
                    <div style="font-family: Satisfy;">
                      <p>Dear Beloved</p>
                   <p >Life is a flower for which love is the honey and if i was a flower gorwing wild and free, all i'd want you to bee is my sweet honey bee.</p> 
                    </div>
                    <footer class="b-blockquote__footer">
                      <cite title="Blockquote Title" class="b-blockquote__cite"></cite><img src="{{ asset('uploads/assets/media/components/b-blockquote/signature-1.png') }}" alt="foto"  style="margin: 3px;"  class="b-blockquote__signature"/>
                    </footer>
                  </blockquote>
                  <!-- end .b-blockquote-->
                </div>
              </div>
            </div>
          </div>
        </div>

        <div class="b-gallery js-zoom-gallery grid b-isotope clearfix">
          <div class="b-isotope__grid">
            <div class="grid-sizer"></div><a href="{{ asset('uploads/assets/media/components/b-gallery/169x169_1.jpg') }}" class="b-gallery__item grid-item js-zoom-gallery__item">
              <div class="b-gallery__inner"><img src="{{ asset('uploads/assets/media/components/b-gallery/169x169_1.jpg') }}" alt="foto"/></div></a><a href="{{ asset('uploads/assets/media/components/b-gallery/348x348_1.jpg') }}" class="b-gallery__item grid-item grid-item_wx2 grid-item_hx2 js-zoom-gallery__item">
              <div class="b-gallery__inner"><img src="{{ asset('uploads/assets/media/components/b-gallery/348x348_1.jpg') }}" alt="foto"/></div></a><a href="{{ asset('uploads/assets/media/components/b-gallery/169x169_3.jpg') }}" class="b-gallery__item grid-item js-zoom-gallery__item">
              <div class="b-gallery__inner"><img src="{{ asset('uploads/assets/media/components/b-gallery/169x169_3.jpg') }}" alt="foto"/></div></a><a href="{{ asset('uploads/assets/media/components/b-gallery/169x169_4.jpg') }}" class="b-gallery__item grid-item js-zoom-gallery__item">
              <div class="b-gallery__inner"><img src="{{ asset('uploads/assets/media/components/b-gallery/169x169_4.jpg') }}" alt="foto"/></div></a><a href="{{ asset('uploads/assets/media/components/b-gallery/169x169_5.jpg') }}" class="b-gallery__item grid-item js-zoom-gallery__item">
              <div class="b-gallery__inner"><img src="{{ asset('uploads/assets/media/components/b-gallery/169x169_5.jpg') }}" alt="foto"/></div></a><a href="{{ asset('uploads/assets/media/components/b-gallery/169x169_6.jpg') }}" class="b-gallery__item grid-item js-zoom-gallery__item">
              <div class="b-gallery__inner"><img src="{{ asset('uploads/assets/media/components/b-gallery/169x169_6.jpg') }}" alt="foto"/></div></a><a href="{{ asset('uploads/assets/media/components/b-gallery/348x348_2.jpg') }}" class="b-gallery__item grid-item grid-item_wx2 grid-item_hx2 js-zoom-gallery__item">
              <div class="b-gallery__inner"><img src="{{ asset('uploads/assets/media/components/b-gallery/348x348_2.jpg') }}" alt="foto"/></div></a><a href="{{ asset('uploads/assets/media/components/b-gallery/169x169_7.jpg') }}" class="b-gallery__item grid-item js-zoom-gallery__item">
              <div class="b-gallery__inner"><img src="{{ asset('uploads/assets/media/components/b-gallery/169x169_7.jpg') }}" alt="foto"/></div></a>
            <div class="b-gallery__item grid-item grid-item_wx4 grid-item_hx2">
              <div class="b-gallery__main bg-grey"><i class="b-gallery__icon fa fa-instagram color-primary"></i>
                <div class="b-gallery__title">@Beehappyke</div>
                <div class="b-gallery__info color-primary">Your sweet love keeps us buzzing. Thank you for bee-ing here!</div>
              </div>
            </div><a href="assets/media/components/b-gallery/169x169_2.jpg" class="b-gallery__item grid-item js-zoom-gallery__item">
              <div class="b-gallery__inner"><img src="{{ asset('uploads/assets/media/components/b-gallery/169x169_2.jpg') }}" alt="foto"/></div></a><a href="{{ asset('uploads/assets/media/components/b-gallery/169x169_8.jpg') }}" class="b-gallery__item grid-item js-zoom-gallery__item">
              <div class="b-gallery__inner"><img src="{{ asset('uploads/assets/media/components/b-gallery/169x169_8.jpg' ) }}" alt="foto"/></div></a><a href="{{ asset('uploads/assets/media/components/b-gallery/348x348_3.jpg') }}" class="b-gallery__item grid-item grid-item_wx2 grid-item_hx2 js-zoom-gallery__item">
              <div class="b-gallery__inner"><img src="{{ asset('uploads/assets/media/components/b-gallery/348x348_3.jpg') }}" alt="foto"/></div></a><a href="{{ asset('uploads/assets/media/components/b-gallery/169x169_9.jpg') }}" class="b-gallery__item grid-item js-zoom-gallery__item">
              <div class="b-gallery__inner"><img src="{{ asset('uploads/assets/media/components/b-gallery/169x169_9.jpg') }}" alt="foto"/></div></a><a href="{{ asset('uploads/assets/media/components/b-gallery/169x169_15.jpg') }}" class="b-gallery__item grid-item js-zoom-gallery__item">
              <div class="b-gallery__inner"><img src="{{ asset('uploads/assets/media/components/b-gallery/169x169_15.jpg') }}" alt="foto"/></div></a><a href="{{ asset('uploads/assets/media/components/b-gallery/348x348_4.jpg') }}" class="b-gallery__item grid-item grid-item_wx2 grid-item_hx2 js-zoom-gallery__item">
              <div class="b-gallery__inner"><img src="{{ asset('uploads/assets/media/components/b-gallery/348x348_4.jpg' ) }}" alt="foto"/></div></a><a href="{{ asset('uploads/assets/media/components/b-gallery/169x169_10.jpg' ) }}" class="b-gallery__item grid-item js-zoom-gallery__item">
              <div class="b-gallery__inner"><img src="{{ asset('uploads/assets/media/components/b-gallery/169x169_10.jpg') }}" alt="foto"/></div></a><a href="{{ asset('uploads/assets/media/components/b-gallery/169x169_11.jpg') }}" class="b-gallery__item grid-item js-zoom-gallery__item">
              <div class="b-gallery__inner"><img src="{{ asset('uploads/assets/media/components/b-gallery/169x169_11.jpg') }}" alt="foto"/></div></a><a href="{{ asset('uploads/assets/media/components/b-gallery/169x169_12.jpg' ) }}" class="b-gallery__item grid-item js-zoom-gallery__item">
              <div class="b-gallery__inner"><img src="{{ asset('uploads/assets/media/components/b-gallery/169x169_12.jpg') }}" alt="foto"/></div></a><a href="{{ asset('uploads/assets/media/components/b-gallery/169x169_13.jpg') }}" class="b-gallery__item grid-item js-zoom-gallery__item">
              <div class="b-gallery__inner"><img src="{{ asset('uploads/assets/media/components/b-gallery/169x169_13.jpg') }}" alt="foto"/></div></a><a href="{{ asset('uploads/assets/media/components/b-gallery/169x169_14.jpg' ) }}" class="b-gallery__item grid-item js-zoom-gallery__item">
              <div class="b-gallery__inner"><img src="{{ asset('uploads/assets/media/components/b-gallery/169x169_14.jpg') }}" alt="foto"/></div></a><a href="{{ asset('uploads/assets/media/components/b-gallery/169x169_16.jpg') }}" class="b-gallery__item grid-item js-zoom-gallery__item">
              <div class="b-gallery__inner"><img src="{{ asset('uploads/assets/media/components/b-gallery/169x169_16.jpg') }}" alt="foto"/></div></a>
          </div>
        </div>
        <!-- end b-gallery-->
         <div class="b-form-newsletter bg-grey">
          <form class="b-form-newsletter__form">
            <div class="b-form-newsletter__title">Newsletter</div>
            <input type="email" placeholder="Enter your email" required="required" class="form-control"/>
            <button class="btn btn-primary btn-effect">Choose To Bee Happy</button>
          </form>
        </div>
       
        @endsection

         @section('extra-js')
        <script src="{{ asset('uploads/animation-assets/js/jquery-2.1.1.js') }}"></script>
        <script src="{{ asset('uploads/animation-assets/js/main.js') }}"></script> <!-- Resource jQuery -->
        <script src="{{ asset('uploads/animation-assets/js/modernizr.js') }}"></script> <!-- Modernizr -->
        @endsection