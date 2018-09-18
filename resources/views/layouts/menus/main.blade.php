              
        <!-- <ul class="yamm main-menu nav navbar-nav hidden-xs">
           @foreach($items as $menu_item)
                    
                        <li class="dropdown"><a href="{{ $menu_item->link() }}">{{ $menu_item->title}}</a></li>
                 @endforeach
               </ul>  -->
           

         </ul>
               <ul class="yamm main-menu nav navbar-nav hidden-xs">
                                
                  <li class="dropdown"><a href="{{ route('welcome')}}" data-toggle="dropdown" class="dropdown-toggle">Home </a>
                  </li>
                  <li class="dropdown"><a href="{{ route('shop.index')}}" data-toggle="dropdown" class="dropdown-toggle">Shop
                    </a>
                  </li>
                  <li class="dropdown"><a href="{{ route('blog.index') }}" data-toggle="dropdown" class="dropdown-toggle">Blog
                     </a>
                  </li>
                  <li class="dropdown"><a href="{{ route('about.index')}}" data-toggle="dropdown" class="dropdown-toggle">About
                </a>
                  </li>
                  <li><a href="{{ route('contact.index')}}">Contact</a></li>
                </ul>
               