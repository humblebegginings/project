@extends('Layouts.master')

@section('content')
<div class="wrap-fixed-menu" id="fixedMenu" >
	<nav class="fullscreen-center-menu">
		<div class="menu-main-menu-container">            
         <ul class="nav navbar-nav">
                <li><a href="home-2.htmll">Home</a></li>
                <li><a href="catalog-list.html" >Shop</a></li>
               
                <li><a href="blog-post.html" >Blog</a></li>
                <li><a href="contact.html">Contact</a></li>
              </ul>        
        </div>    </nav>
	<button type="button" class="fullmenu-close"><i class="fa fa-times"></i></button>
</div>
      <div class="wrap-content">
      <div class="container">
          <article class="b-post b-post-full-2 clearfix">
            <div class="row">
              <div class="col-xs-12">
                <div class="entry-header">
                  <div class="entry-category bg-primary">Bee readers!</div>
                  <h2 class="entry-title">{{ $post->title}} <br></h2>
                  <div class="entry-meta">{{ $post->created_at->format('F d, y')}}    
                  </div>
                </div>
              </div>
            </div>
            <div class="entry-main">            
              <div class="entry-content">             
                <div class="b-post-foto">
                  <div class="row">
                    <div class="col-md-2">
                      <div class="foto-description">
                        <div class="icon fa fa-camera color-primary"></div>
                        <div class="foto-description__author">{{$post->author->name }}</div>
                      </div>
                    </div>
                    <div class="col-md-8"><img src="{{ asset('storage/'.$post->image) }}" alt="foto" class="img-responsive"></div>
                  </div>
                </div>
                <div class="row">
                  <div class="col-md-8 col-md-offset-2">
                    <h2 class="entry-subtitle">{!! $post->excerpt !!}</h2>
                    <p>
                      {!! $post->body !!}
                    </p>
                  </div>
                </div>              
                <div class="row">  
                    <div class="row">
                      <br><br>
                      <div class="post-tags">
                        <div class="entry-footer__title">tags:</div>
                        <ul class="post-tags__list list-inline">
                          <li><a href="post-1.html">Honey</a></li>
                          <li><a href="post-1.html">happy</a></li>
                          <li><a href="post-1.html">Bee</a></li>
                          <li><a href="post-1.html">sugar</a></li>
                        </ul>
                      </div>
                      <div class="entry-footer__link">
                        <div class="entry-footer__title">Share:</div>
                        <ul class="social-net list-inline">
                          <li class="social-net__item"><a href="facebook.com" class="social-net__link"><i class="icon fa fa-facebook"></i></a></li>
                          <li class="social-net__item"><a href="twitter.com" class="social-net__link"><i class="icon fa fa-twitter"></i></a></li>
                          <li class="social-net__item"><a href="pinterest-p.com" class="social-net__link"><i class="icon fa fa-pinterest-p"></i></a></li>
                          <li class="social-net__item"><a href="vk.com" class="social-net__link"><i class="icon fa fa-vk"></i></a></li>
                        </ul>
                        <!-- end social-list-->
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </article>
      @endsection