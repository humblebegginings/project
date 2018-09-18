               

                 <article class="b-post b-post-1 clearfix">
                    <div class="entry-media"><a href="{{ asset('storage/'.$post->image) }}" class="js-zoom-images"><img src="{{ asset('storage/'.$post->image) }}" alt="Foto" class="img-responsive"/></a>
                      <div class="entry-category">{{$post->title}}</div>
                    </div>
                    <div class="entry-main">
                      <div class="entry-header">
                        <h2 class="entry-title entry-title_spacing ui-title-inner">{!! $post->excert !!}</h2>
                      </div>
                      <div class="entry-content">
                        <p>{!! $post->body !!}</p>
                      </div>
                      
                      <div class="entry-footer"><a href="/post/{{ $post->slug}}" class="btn btn-default btn-effect"><i class="icon color-primary fa fa-arrow-circle-right"></i> read more</a>

                        <div class="entry-meta"><span class="entry-meta__item"><a href="blog-post.html" class="entry-meta__date">
                          {{ $post->created_at->format('F m y') }}
                        </a></span><span class="entry-meta__item"><i class="entry-meta__icon color-primary fa fa-heart-o"></i><a href="blog-post.html" class="entry-meta__link">18</a></span><span class="entry-meta__item"><i class="entry-meta__icon color-primary fa fa-comment-o"></i><a href="blog-post.html" class="entry-meta__link">3</a></span></div>
                      </div>
                    </div>
                  </article>
                  <!-- end post-->