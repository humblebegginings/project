@extends('layouts.master')

@section('title', $product->name)

@section('content')
<div class="wrap-content">

<div class="container">
          <div class="row">
            <div class="col-xs-12">
              <ol class="breadcrumb">
                <li><a href="home.html">Home</a></li>
                <li><a href="home.html">Catalog</a></li>
                <li><a href="home.html">Clothong</a></li>
                <li class="active">raincoats</li>
              </ol>
            </div>
          </div>
        </div>

        <div class="b-goods-carousel b-goods-carousel_2-col bg-grey-3">
          <div class="container">
            <div class="row">
              <div class="col-sm-2">
                
                
              </div>
              <div class="col-md-7 col-sm-6">
                <ul class="b-goods-carousel__main-img bxslider">
                  <li><img src="{{ asset('storage/'.$product->image) }}" style="margin:20px;  padding: 10px; width: 75%;"  alt="foto"/></li>
                </ul>
              </div>
              <!-- end b-goods-carousel-->
              
              
              <div class="col-md-3 col-sm-4">
                <section class="b-goods-3">
                  <div class="b-goods-3__category">{{$product->name}}</div>
                  <h3 class="b-goods-3__name">{{ $product->details}}</h3>
                  <div class="b-goods-3__label bg-secondary">sale</div>
                  <div class="b-goods-3__description">{!! $product->description !!}</div>
                </section>
                <!-- end b-goods-->
               
                <div class="woocommerce">
                  <button type="submit" class="btn btn-primary btn-effect"">
                  <a href="https://wa.me/2540700453377?text=http://localhost:8000/shop/{{ $product->name }},{{ $product->price }}"> 
                    <i class="fa fa-whatsapp" aria-hidden="true"> whatsApp</i></a>
                  </button>
                </div>

                <form action="{{ route('cart.store') }}" method="POST" class="form-goods form-horizontal">
                    {{ csrf_field() }}
                     <input type="hidden" name="id" value="{{ $product->id }}">
                     <input type="hidden" name="name" value="{{ $product->name }}">
                     <input type="hidden" name="price" value="{{ $product->price }}">
                    <button type="submit" class="btn btn-primary btn-effect">add to cart</button>
                  </form>

              </div>

            </div>
          </div>
        </div>
        

         <div class="b-goods-tab">
          <!-- Nav tabs-->
          <ul class="b-goods-tab-nav nav nav-tabs">
            <li class="active"><a href="#home" data-toggle="tab">DESCRIPTION</a></li>
            <li><a href="#reviews" data-toggle="tab">REVIEWS (2)</a></li>
            <li><a href="#related" data-toggle="tab">RELATED PRODUCTS</a></li>
          </ul>
          <!-- Tab panes-->
          <div class="b-goods-tab-content tab-content">
            <div id="home" class="tab-pane fade in active">
              <div class="container">
                <div class="row">
                  <div class="col-sm-10 col-sm-offset-1">
                    <div class="b-goods-tab-content__description">{!! $product->description !!}</div>
                  </div>
                </div>
              </div>
              <div class="b-goods-description">
                <div class="container">
                  <div class="row">
                    <div class="col-md-3 col-sm-4">
                      <dl class="b-goods-description__list b-goods-description__list_left">
                        <dt style="font-family: Satisfy;">It is not with saying,
"Honey," "Honey,"
that sweetness will come into the mouth</dt>
                        <dd>African proverb</dd>
                        <dt style="font-family: Satisfy;">When the bee comes to your house,
let her have beer; you may want to
visit the bee’s house some day.


</dt>
                        <dd>Congolese Proverb</dd>
                      </dl>
                    </div>
                    <div class="col-md-6 col-sm-4"><img src="{{ asset('uploads/assets/media/content/goods/description/1.png') }}" alt="foto" class="b-goods-description__img center-block img-responsive"/></div>
                    <div class="col-md-3 col-sm-4">
                      <dl class="b-goods-description__list b-goods-description__list_right">
                        <dt style="font-family: Satisfy;"> Nimekula asali tangu udogoni, utamu ungali gegoni.</dt>
                        <dd>Swahili proverb</dd>
                        <dt style="font-family: Satisfy;">Bees do have a smell, you know, and if they don’t they
should, for their feet are dusted with spices from a
million flowers.</dt>
                        <dd>Ray Bradbury</dd>
                      </dl>
                    </div>
                  </div>
                </div>
              </div>
              <div class="block-table">
                <div class="block-table__cell"><img src="{{ asset('uploads/assets/media/content/goods/890x600/1.png') }}" alt="foto" class="img-responsive"/></div>
                <div class="block-table__cell"><img src="{{ asset('uploads/assets/media/content/goods/890x600/2.png') }}" alt="foto" class="img-responsive"/></div>
              </div>
            </div>
            <div id="information" class="tab-pane fade">
              <div class="container">
                <div class="row">
                  <div class="col-xs-12">
                    <div class="table-container">
                      <table class="b-goods-table-information">
                        <tbody>
                          <tr>
                            <td><i class="icon flaticon-signs"></i><i class="icon flaticon-signs-24"></i><i class="icon flaticon-signs-3"></i><i class="icon flaticon-signs-15"></i><i class="icon flaticon-signs-19"></i></td>
                            <td>Some will enjoy the honey,
others will have to put up with the sting.</td>
                          </tr>
                          <tr>
                            <td class="color-secondary">:</td>
                            <td></td>
                          </tr>
                          <tr>
                            <td class="color-secondary">Weight:</td>
                            <td>450 g</td>
                          </tr>
                          <tr>
                            <td class="color-secondary">Color:</td>
                            <td>Raw, Honey and chilli,honey and Ginger,honey and Cinnamon</td>
                          </tr>
                          <tr>
                            <td class="color-secondary">Sizes:</td>
                            <td>250, 450, 900 grams</td>
                          </tr>
                        </tbody>
                      </table>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div id="reviews" class="tab-pane fade">
              <div class="container">
                <div class="row">
                  <div class="col-sm-10 col-sm-offset-1">
                    <section class="section-comment b-goods-reviews">
                      <h2 class="b-goods-reviews__title ui-title-block-2">Reviews:</h2>
                      <ul class="comments-list list-unstyled">
                        <li>
                          <article class="comment b-goods-reviews__comment clearfix">
                            <header class="comment-header clearfix">
                              <div class="pull-left">
                                <cite class="comment-author"> Instagram</cite>
                                <time datetime="2012-10-27" class="comment-datetime">11 January 2018</time>
                              </div>
                              <ul class="rating-list list-inline pull-right">
                                <li class="fa fa-star color-primary"></li>
                                <li class="fa fa-star color-primary"></li>
                                <li class="fa fa-star color-primary"></li>
                                <li class="fa fa-star color-primary"></li>
                                <li class="fa fa-star-o"></li>
                              </ul>
                            </header>
                            <div class="comment-body">
                              <p>I got the large,totally worth it!!!How i wasted time on supermarket honey. thank you soo much@BeeHappyke.</p>
                            </div>
                          </article>
                        </li>
                        <li>
                          <article class="comment b-goods-reviews__comment clearfix">
                            <header class="comment-header clearfix">
                              <div class="pull-left">
                                <cite class="comment-author"> Twitter</cite>
                                <time datetime="2012-10-27" class="comment-datetime">11 Jan 2018</time>
                              </div>
                              <ul class="rating-list list-inline pull-right">
                                <li class="fa fa-star color-primary"></li>
                                <li class="fa fa-star color-primary"></li>
                                <li class="fa fa-star color-primary"></li>
                                <li class="fa fa-star color-primary"></li>
                                <li class="fa fa-star-o"></li>
                              </ul>
                            </header>
                            <div class="comment-body">
                              <p>It's super cute!!!and the honey...my goodness! i don't i'll need sugar in looooong time.</p>
                            </div>
                          </article>
                        </li>
                      </ul>
                    </section>
                    <section id="section-reply-form" class="section-reply-form">
                      <h2 class="ui-title-block-2">Add New Review:</h2>
                      <form action="#" method="post" class="form-reply ui-form">
                        <div class="rating">
                          <div class="rating__title">Rating:</div>
                          <ul class="rating-list list-inline">
                            <li class="fa fa-star color-primary"></li>
                            <li class="fa fa-star color-primary"></li>
                            <li class="fa fa-star color-primary"></li>
                            <li class="fa fa-star color-primary"></li>
                            <li class="fa fa-star-o"></li>
                          </ul>
                        </div>
                        <div class="row">
                          <div class="col-xs-12">
                            <textarea rows="4" placeholder="Enter your review*" class="form-control"></textarea>
                          </div>
                        </div>
                        <div class="row">
                          <div class="col-md-4">
                            <input type="text" placeholder="Your Name*" class="form-control"/>
                          </div>
                          <div class="col-md-4">
                            <input type="email" placeholder="Email" class="form-control"/>
                          </div>
                          <div class="col-md-4">
                            <button class="ui-form__btn btn btn-primary btn-effect pull-right">Submit</button>
                          </div>
                        </div>
                      </form>
                    </section>
                    <!-- end section-reply-form-->
                  </div>
                </div>
              </div>
            </div>
            <div id="related" class="tab-pane fade">
              <div class="container">
                <div class="tab-group-goods">
                  <div class="js-scroll-content">
                    <div class="row">
                      @foreach ( $mightAlsoLike as $product)
                      <div class="col-md-3">
                        
                        <section class="b-goods b-goods_mod-b">
                          <div class="b-goods__inner"><a href="#" class="b-goods__img js-zoom-images">
                            <img src="{{ asset('storage/'.$product->image) }}" alt="goods" class="img-responsive"/></a>
                            <div class="b-goods__category">category</div>
                            <h3 class="b-goods__name"><a href="{{ route('shop.show', $product->slug)}}">{{ $product->name}}</a></h3>
                            <div class="b-goods__price">{{ $product->price}}</div>
                          </div>
                        </section>
                        
                        <!-- end b-goods-->
                        
                      </div>
                      @endforeach
                      
                      
    
                    </div>
                  </div>
                 
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
        <!-- end b-goods-tab-->
        @endsection