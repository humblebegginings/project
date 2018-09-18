@extends('layouts.master')

@section('content')
<div class="wrap-content">
  
</div>
<div class="container">
          <div class="row">
            <div class="col-xs-12">
              <ol class="breadcrumb">
                <li><a href="home.html"></a></li>
                <li><a href="home.html"></a></li>
                <li><a href="home.html"></a></li>
                <li class="active"></li>
              </ol>
            </div>
          </div>
        </div>

        <div class="b-title-page b-title-page_w_bg">
          <div class="container">
            <div class="row">
              <div class="col-xs-12">
                <h1 class="b-title-page__title">Welcome to our shop</h1>
                <ul class="main-slider__list list-inline">
                       <li><a href="{{ route('shop.index')}}">RAW HONEY</a></li>
                       
                        <li><a href="{{ route('shop.index')}}">HONEY & CHILLI</a></li>
                        <li><a href="{{ route('shop.index')}}">Personalized jars</a></li>
                      </ul>
              </div>
            </div>
          </div>
        </div>
        
                      </section>
                    </div>
                   
                      </section>
                    </div>
                   
                      </section>
                    </div>
                    
                    </div>
                  </div>
                  <div class="row">
                    <div class="col-xs-12">
                      <div class="b-goods-number-products pull-left">Showing 1 to {{ $products->count() }} products</div>
                    </div>
                  </div>
                </form>
              </div>
              <div class="l-main-content">

                <div class="b-goods-catalog" style="margin: 15px 15px;">
                  
                  @foreach( $products as $product)
                   
                    <!--Products start here-->
                  <section class="b-goods b-goods_mod-a b-goods_5-col">
                    <div class="b-goods__inner"><a href="{{ route('shop.show', $product->slug)}}"><a href="{{ asset('storage/'.$product->image) }}" class="b-goods__img js-zoom-images"><img src="{{ asset('storage/'.$product->image) }}" alt="goods" class="img-responsive"/></a></a>
                      <div class="b-goods__wrap">
                        <div style="color: #000;">
                         <!-- <div class="b-goods__category"><a href="{{ route('shop.show', $product->slug)}}">{{ $product->slug }}</a></div>-->
                         <div style="margin: 10px;">
                           <h3 class="b-goods__name"><strong><a href="{{ route('shop.show', $product->slug)}}">{{ $product->name}}</a></strong></h3>
                         <div class="b-goods__details"><a href="{{ route('shop.show', $product->slug)}}">{{ $product->details}}</a></div>
                        <div class="b-goods__description"><a href="{{ route('shop.show', $product->slug)}}">{!! $product->description !!}</a></div>
                         </div>
                        
                        </div>
                        
                        <div class="b-goods__price" style="color: #CCCC00;">KSH {{ $product->price}}</div>
                        <div class="b-goods-links"><a href="{{ route('shop.show', $product->slug )}}" class="b-goods-links__item b-goods-links__item_main">View Product</a></div>
                        <div class="b-goods__label bg-secondary">sale</div>
                      </div>
                    </div>
                  </section>
                  <!-- end b-goods-->
                  @endforeach
                </div>
                 <div class="text-right">
                {{ $products->links() }}
              </div>
              </div>
            </div>
          </div>
        </div>
        </div>

        @endsection