@extends('layouts.front')

@section('content')

    @if($ps->slider == 1)

        @if(count($sliders))

            @include('includes.slider-style')
        @endif
    @endif

    @if($ps->slider == 1)
        <!-- Hero Area Start -->
        <section class="hero-area">
            @if($ps->slider == 1)

                @if(count($sliders))
                    <div class="hero-area-slider">
                        <div class="slide-progress"></div>
                        <div class="intro-carousel">
                            @foreach($sliders as $data)
                                <div class="intro-content {{$data->position}}" style="background-image: url({{asset('assets/images/sliders/'.$data->photo)}})">
                                    <div class="container">
                                        <div class="row">
                                            <div class="col-lg-12">
                                                <div class="slider-content">
                                                    <!-- layer 1 -->
                                                    <div class="layer-1">
                                                        <h4 style="font-size: {{$data->subtitle_size}}px; color: {{$data->subtitle_color}}" class="subtitle subtitle{{$data->id}}" data-animation="animated {{$data->subtitle_anime}}">{{$data->subtitle_text}}</h4>
                                                        <h2 style="font-size: {{$data->title_size}}px; color: {{$data->title_color}}" class="title title{{$data->id}}" data-animation="animated {{$data->title_anime}}">{{$data->title_text}}</h2>
                                                    </div>
                                                    <!-- layer 2 -->
                                                    <div class="layer-2">
                                                        <p style="font-size: {{$data->details_size}}px; color: {{$data->details_color}}"  class="text text{{$data->id}}" data-animation="animated {{$data->details_anime}}">{{$data->details_text}}</p>
                                                    </div>
                                                    <!-- layer 3 -->
                                                    <div class="layer-3">
                                                        <a href="{{$data->link}}" target="_blank" class="mybtn1"><span>{{ $langg->lang25 }} <i class="fas fa-chevron-right"></i></span></a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            @endforeach
                        </div>
                    </div>
                @endif

            @endif

        </section>
        <!-- Hero Area End -->
    @endif

    @if($ps->featured_category == 1)

        {{-- Slider Bottom Banner Start --}}
        <section class="bg-imgesetting slider_bottom_banner py-5" style="background-image: url({{asset('assets/images/bg-imges/categories-bg.jpg') }});">
            <div class="container">
                <div class="row">
                    <div class="col-lg-2"></div>
                    <div class="col-lg-8">
                        <div class="text-center ">
                            <p class="text-center text-uppercase text-white " style="letter-spacing: 2px;">Latest
                                Collections 2020</p>
                            <h2 class="text-white">Featured <br>
                                Categories</h2>
                            <p class="text-white">Only branded products are included in all of the following categories.
                                There are no local products other than the branded products.</p>
                        </div>
                    </div>
                </div>
{{--                @foreach(DB::table('featured_banners')->get()->chunk(6) as $data1)--}}
                    <div class="row mt-2">
                        @foreach(DB::table('featured_banners')->get() as $data)
                            <div class="col-lg-2 col-md-3 col-sm-6 ">
                                <a href="{{ $data->link }}" target="_blank" class="banner-effect mb-3 feacture-links-height">
                                    <img src="{{ $data->photo ? asset('assets/images/featuredbanner/'.$data->photo) : asset('assets/images/noimage.png') }}" class="img-fluid" alt="">
                                </a>
                            </div>
                            @if(!$loop->last)
                                <br>
                            @endif
                        @endforeach
                    </div>

{{--                @endforeach--}}
            </div>
        </section>
        {{-- Slider Botom Banner End --}}
    @endif




    <section id="extraData">
        <div class="text-center">
            <img class="{{ $gs->is_loader == 1 ? '' : 'd-none' }}" src="{{asset('assets/images/'.$gs->loader)}}">
        </div>
    </section>

    @if($ps->small_banner == 1)
        <!-- Banner Area One Start -->
        <section class="bg-imgesetting2 py-5" style="background-image: url({{asset('assets/images/bg-imges/discount-bg.jpg') }});">
            <div class="container">
                <div class="row">
                    <div class="col-xl-2"></div>
                    <div class="col-xl-8">
                        <div class="text-center">
                            <p class="text-center text-uppercase mt-3" style="letter-spacing: 2px;">Available Deals</p>
                            <h2>Deals &amp; <br>
                                Discounts
                            </h2>
                        </div>
                    </div>
                </div>
                <div class="row mb-4 mb-xl-0 ">
                    <div class="col-12">
                        <p class="text-center">Only branded products are included in all of the following categories.
                            There are no local products other than the branded products.</p>
                    </div>
                </div>
                <div class="row">
                    <div class="col-12">
                    <div class="baners-item-slider">
                            @foreach($top_small_banners as $img)
                               <div class="mx-2">
                                   <a class="banner-effect p-2 rounded" href="{{ $img->link }}" target="_blank">
                                       <img src="{{asset('assets/images/banners/'.$img->photo)}}" class="rounded" alt="">
                                   </a>
                               </div>
                        @endforeach
                        </div>
                </div>
                </div>
            </div>
        </section>
        <!-- Banner Area One Start -->
    @endif

    @if($ps->featured == 1)
        <!-- Trending Item Area Start -->
        <section  class="trending p-0  bg-imgesetting" style="background-image: url({{asset('assets/images/bg-imges/banner-01.jpg') }});">
            <div class="py-5" style="background: #0000008c">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div class="text-center">
                            <p class="text-center text-white text-uppercase " style="letter-spacing: 2px;">Winter
                                2020</p>
                            <h2 class="text-white">FEATURED<br>
                                Collections
                            </h2>
                            <p class="text-white">The following products are the newest and latest products of all
                                Brands which have been launched according to the new fashion.</p>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-12 remove-padding">
                        <div class="section-top">
                            <h2 class="section-title text-white">
                                {{ $langg->lang26 }}
                            </h2>
                            {{-- <a href="#" class="link">View All</a> --}}
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-12 remove-padding">
                        <div class="trending-item-slider">
                            @foreach($feature_products as $prod)
                                @include('includes.product.slider-product')
                            @endforeach
                        </div>
                    </div>

                </div>
            </div>
            </div>
        </section>
        <!-- Tranding Item Area End -->
    @endif

    @if($ps->service == 1)
        {{-- Info Area Start --}}
        <section class="info-area">
            <div class="container">
                @foreach($services->chunk(4) as $chunk)
                    <div class="row">
                        <div class="col-lg-12 p-0">
                            <div class="info-big-box">
                                <div class="row">
                                    @foreach($chunk as $service)
                                        <div class="col-6 col-xl-3 p-0">
                                            <div class="info-box">
                                                <div class="icon">
                                                    <img src="{{ asset('assets/images/services/'.$service->photo) }}">
                                                </div>
                                                <div class="info">
                                                    <div class="details">
                                                        <h4 class="title">{{ $service->title }}</h4>
                                                        <p class="text">
                                                            {!! $service->details !!}
                                                        </p>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    @endforeach
                                </div>
                            </div>
                        </div>
                    </div>
                @endforeach

            </div>
        </section>
        {{-- Info Area End  --}}


    @endif
    @if($ps->partners == 1)
        <!-- Partners Area Start -->
        <section class="brand-section partners py-5" >
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="section-top">
                            <h2 class="section-title">
                                {{ $langg->lang236 }}
                            </h2>
                        </div>
                    </div>
                </div>
                <div class="row mt-3">
                    <div class="col-lg-12 padding-decrease">
                        <div class="brand-slider">
                            @foreach($partners->chunk(2) as $partner)
                                <div class="slide-item">
                                    @foreach($partner as $data)
                                        <a href="{{ $data->link }}" target="_blank" class="brand">
                                            <img src="{{ asset('assets/images/partner/'.$data->photo) }}" alt="">
                                        </a>
                                    @endforeach
                                </div>
                            @endforeach
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Partners Area End -->
    @endif

    <section class="bg-imgesetting  bg-imgefixed py-5" style="background-image: url({{asset('assets/images/bg-imges/newsletter-bg.jpg') }});">
        <div class="container">
            <div class="row">
                <div class="col-xl-12">
                    <h2 class="text-white">{{$gs->popup_title}}</h2>
                </div>
            </div>
            <div class="row mb-4">
                <div class="col-lg-6">
                    <p class=" text-white">{{$gs->popup_text}}</p>
                </div>
                <div class="col-lg-6">
                    <form action="{{route('front.subscribe')}}"  method="POST">
                        {{csrf_field()}}
                        <div class="newsletter my-md-0 my-3 position-relative p-1">
                            <input type="email" name="email" autocomplete="off" placeholder="{{ $langg->lang741 }}" required="" class="form-control text-white">
                            <button    class="imgelikebtn position-absolute bg-transparent newsletter-btn px-3 text-uppercase font-weight-normal pt-2" id="sub-btn" type="submit">{{ $langg->lang742 }}</button>
                        </div>
                    </form>
                </div>
            </div>
            <!-- Banner Area One Start -->
        {{-- <div class="row">
             <div class="baners-item-slider">
         @foreach($top_small_banners->chunk(5) as $chunk)
                 @foreach($chunk as $img)
                     <div class="col-lg-6 remove-padding">
                         <div class="left">
                             <a class="" href="{{ $img->link }}" target="_blank">
                                 <img src="{{asset('assets/images/porduct/'.$img->photo)}}" class="img-fluid" alt="">
                             </a>
                         </div>
                     </div>
         @endforeach
                 @endforeach
             </div>
         </div>--}}
        <!-- Banner Area One Start -->

        </div>
    </section>
@endsection

@section('scripts')
    <script>
        $(window).on('load',function() {

            setTimeout(function(){

                $('#extraData').load('{{route('front.extraIndex')}}');

            }, 500);
        });

    </script>
@endsection