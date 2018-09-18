@extends('Layouts.master')

@section('content')
         <div class="b-title-page b-title-page_w_bg">
          <div class="container">
            <div class="row">
              <div class="col-xs-12">
                <div class="b-title-page__label color-primary">It is interesting</div>
                <h1 class="b-title-page__title">Our Blog</h1>
              </div>
            </div>
          </div>
        </div>
        <!-- end b-title-page-->

          <div class="container">
          <div class="row">
            <div class="col-lg-9 col-md-8">
              <div class="l-main-content l-main-content_pd-rgt l-main-content_pd-top_lg">
                <div class="posts-group">

                         @foreach($posts as $post)

                               @include('partials.post',['post' => $post ] )

                         @endforeach

                  <!-- end post-->
                  
                </div>
                <ul class="pagination">

                 <li>{{ $posts->Links() }}</li>
                 
                </ul>
              </div>
            </div>
            <div class="col-lg-3 col-md-4">
              <aside class="l-sidebar sidebar_right">
                <section class="widget widget-author">
                  <h3 class="widget-title ui-title-inner">ABOUT AUTHOR</h3>
                  <div class="widget-content">
                    <div class="widget-author__name">{{ $post->author->name}}</div>
                    <div class="widget-author__description"></div>
                          <ul class="social-net list-inline">
                            <li class="social-net__item"><a href="facebook.com" class="social-net__link"><i class="icon fa fa-facebook"></i></a></li>
                            <li class="social-net__item"><a href="twitter.com" class="social-net__link"><i class="icon fa fa-twitter"></i></a></li>
                            <li class="social-net__item"><a href="pinterest-p.com" class="social-net__link"><i class="icon fa fa-pinterest-p"></i></a></li>
                            <li class="social-net__item"><a href="vk.com" class="social-net__link"><i class="icon fa fa-vk"></i></a></li>
                          </ul>
                          <!-- end social-list-->
                  </div>
                </section>
                <!-- end .widget--> 
                <section class="widget">
                  <h3 class="widget-title ui-title-inner">POPULAR posts</h3>
                  @foreach($posts as $post)
                  <div class="widget-content">
                    <div class="post-widget clearfix">
                      <div class="entry-media"><a href="blog-post.html"><img src="{{ asset('storage/'.$post->image) }}" alt="foto" class="img-responsive" /></a></div>
                      <div class="entry-main"><a href="blog-post.html" class="entry-title ui-title-inner">{{$post->title}}</a>
                        <div class="entry-meta"><span class="entry-meta__item"><i class="entry-meta__icon color-primary fa fa-heart-o"></i><a href="blog-post.html" class="entry-meta__link">18</a></span><span class="entry-meta__item"><i class="entry-meta__icon color-primary fa fa-comment-o"></i><a href="blog-post.html" class="entry-meta__link">3</a></span></div>
                      </div>
                      <!-- end .widget-post-->
                      
                    </div>                   
                  </div>
                  <li>{{ $posts->Links() }}</li>
                  @endforeach
                </section>
              </aside>
              <!-- end .sidebar-->
              
            </div>
          </div>
        </div>

@endsection