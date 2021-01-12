@extends('layouts.front')
@section('content')

    <!-- Breadcrumb Area Start -->
    {{--<div class="breadcrumb-area" style="background: #eeeeee">
      <div class="container">
        <div class="row">
          <div class="col-lg-12">
            <ul class="pages">
              <li>
                <a href="{{ route('front.index') }}">
                  {{ $langg->lang17 }}
                </a>
              </li>
              <li>
                <a href="{{ route('front.page',$page->slug) }}">
                  {{ $page->title }}
                </a>
              </li>
            </ul>
          </div>
        </div>
      </div>
    </div>--}}
    <!-- Breadcrumb Area End -->

    <section class="bg-imgesetting  py-5"
             style="background-image: url({{asset('assets/images/bg-imges/about-bg.png') }});">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <h2 class="mt-5 pt-4">  {{ $page->title }}</h2>
                    <p class="lato-new-font text-uppercase mb-5 mt-4 pb-1"><a href="{{ route('front.index') }}">
                            {{ $langg->lang17 }}
                        </a> / <b> <a href="{{ route('front.page',$page->slug) }}">
                                {{ $page->title }}
                            </a></b></p>
                </div>
            </div>
        </div>
    </section>

  {{--  <div class="breadcrumb-area" style="background: #eeeeee">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <ul class="pages">
                        <li>
                            <a href="{{ route('front.index') }}">
                                {{ $langg->lang17 }}
                            </a>
                        </li>
                        <li>
                            <a href="{{ route('front.page',$page->slug) }}">
                                {{ $page->title }}
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>--}}

{{--    backup sections--}}
   {{-- <section class="bg-imgesetting py-5"
             style="background-image: url({{asset('assets/images/bg-imges/about-se-bg.png') }});">
        <div class="container">
            <div class="row pb-4">
                <div class="col-lg-6">
                    <h2 class="text-white mb-3 lato-new-font">OUR success <br>
                        AND <br>
                        COMPANY HISTORY</h2>
                    <p class="lato-new-font text-white">A Wonderful Serenity Has Taken Possession Of My Entire Soul,
                        Like These Sweet Mornings Of Spring Which I Enjoy With My Whole Heart.</p>
                    <div class="d-flex flex-wrap ml-n2 mt-4">
                        <span>
                           <a href="#" class="imgelikebtn mx-2 mt-2 d-block text-uppercase font-weight-normal pt-2">SEE PROJECTS</a>
                        </span>
                        <span>
                           <a href="#"
                              class="imgelikebtn3 bg-white mx-2 mt-2 d-block text-uppercase font-weight-normal pt-2">VIEW MORE</a>
                        </span>
                    </div>
                </div>
            </div>
        </div>
    </section>


    <section class="bg-imgesetting  "
             style="background-image: url({{asset('assets/images/bg-imges/bg-sect2.png') }});">
        <div class="py-5" style="background: rgb(0 0 0 / 55%);">
            <div class="container">
                <div class="row">
                    <div class="col-lg-4"></div>
                    <div class="col-lg-8">
                        <h2 class="text-white mb-3 lato-new-font">ABOUT OUR ONLINE STORE</h2>
                        <h5 class="text-white mb-3 lato-new-font text-uppercase">WoodMart-Best Ecommerce Theme</h5>
                        <p class="text-white mb-3 lato-new-font"> One morning, when Gregor Samsa woke from troubled
                            dreams,
                            he found himself transformed in his bed into a horrible vermin.
                            He lay on his armour-like back, and if he lifted his head a little he
                            could see his brown belly, slightly domed and divided by arches
                            into stiff.</p>
                        <p class="text-white mb-3 lato-new-font">Dictumst per ante cras suscipit nascetur ullamcorper in
                            nullam
                            fermentum condimentum torquent iaculis reden posuere potenti
                            viverra condimentum dictumst id tellus suspendisse convallis
                            condimentum.</p>
                        <ul class="about-social-links ml-n2">
                            <li><a href="#"><i class="fab ml-1 fa-facebook-f"></i></a></li>
                            <li><a href="#"><i class="fab fa-google"></i></a></li>
                            <li><a href="#"><i class="fab fa-twitter"></i></a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section style="background: #EEEEEE">
        <div class="container pb-5 pt-3">
            <div class="row">
                <div class="col-lg-6">
                    <div class="row">
                        <div class="col-sm-6 mt-3">
                            <div class="bg-white py-5 rounded shadow">
                                <h1 class="text-center font-weight-bold" style="color: #00ACEE">45+</h1>
                                <h6 class="text-center text-uppercase font-weight-bolder">VENDORS</h6>
                            </div>
                        </div>
                        <div class="col-sm-6 mt-3">
                            <div class="bg-white py-5 rounded shadow">
                                <h1 class="text-center font-weight-bold" style="color:#A398D0;">1000+</h1>
                                <h6 class="text-center text-uppercase font-weight-bolder">SATISFIED CLIENTS</h6>
                            </div>
                        </div>
                    </div>
                    <div class="row mt-md-3 ">
                        <div class="col-sm-6 mt-3">
                            <div class="bg-white py-5 rounded shadow">
                                <h1 class="text-center font-weight-bold" style="color: #F6E579">5000+</h1>
                                <h6 class="text-center text-uppercase font-weight-bolder">products</h6>
                            </div>
                        </div>
                        <div class="col-sm-6 mt-3">
                            <div class="bg-white py-5 rounded shadow">
                                <h1 class="text-center font-weight-bold" style="color:#DF93CD;">45+</h1>
                                <h6 class="text-center text-uppercase font-weight-bolder">VENDOR stores</h6>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 mt-lg-3 mt-4">
                    <div class="rounded shadow h-100 bg-white p-3">
                        <h3 class="mb-3 font-weight-bold  lato-new-font-o">we convert your
                            idea into reality</h3>
                        <h6 class="mb-3 font-weight-bold  lato-new-font">WoodMart-Best Ecommerce Theme</h6>
                        <p class="lato-new-font-o">One morning, when Gregor Samosa woke from troubled dreams,
                            he found himself transformed in his bed into a horrible vermin.
                            He lay on his armor-like back, and if he lifted his head a little he
                            could see his brown belly, slightly domed and divided by arches
                            into stiff.
                        </p>
                        <p class="lato-new-font-o ">
                            One morning, when Gregor Samosa woke from troubled dreams,
                            he found himself transformed in his bed into a horrible vermin.
                            He lay on his armor-like back.
                        </p>
                        <div class="d-flex flex-wrap justify-content-center mt-xl-5">
                        <span>
                           <a href="#" class="imgelikebtn mx-2 mt-2 d-block text-uppercase font-weight-normal pt-2">SEE PROJECTS</a>
                        </span>
                            <span>
                           <a href="#" class="imgelikebtn2 mx-2 mt-2 d-block text-uppercase font-weight-normal pt-2">VIEW MORE</a>
                        </span>
                        </div>
                        <br>
                    </div>
                </div>
            </div>
        </div>
    </section>


    <section class="bg-imgesetting bg-imgefixed py-5"
             style="background-image: url({{asset('assets/images/bg-imges/best-products.png')}});">
        <div class="container">
            <div class="row">
                <div class="col-xl-6">
                    <h2 class="text-white text-center text-xl-left mb-3 lato-new-font">OUR <br>
                        BEST PRODUCTS</h2>
                    <h5 class="text-white mb-3  text-center text-xl-left lato-new-font text-uppercase">WoodMart-Best
                        Ecommerce Theme</h5>
                    <div class="d-flex flex-wrap about-products-detials justify-content-center">
                        <a href="#" class="bg-imgesetting position-relative"
                           style="background-image: url({{asset('assets/images/bg-imges/products1.png')}});">
                            <div class="bg-imgess-bg">
                                <h6 class="text-uppercase position-absolute contact-prodctss">CAPS</h6>
                            </div>
                        </a>
                        <a href="#" class="bg-imgesetting position-relative"
                           style="background-image: url({{asset('assets/images/bg-imges/prodcut2.png')}});">
                            <div class="bg-imgess-bg">
                                <h6 class="text-uppercase position-absolute contact-prodctss">CAPS</h6>
                            </div>
                        </a>
                        <a href="#" class="bg-imgesetting position-relative"
                           style="background-image: url({{asset('assets/images/bg-imges/product3.png')}});">
                            <div class="bg-imgess-bg">
                                <h6 class="text-uppercase position-absolute contact-prodctss">CAPS</h6>
                            </div>
                        </a>
                        <a href="#" class="bg-imgesetting position-relative"
                           style="background-image: url({{asset('assets/images/bg-imges/product4.png')}});">
                            <div class="porducts-bg">
                                <h6 class="text-uppercase position-absolute contact-prodctss">CAPS</h6>
                            </div>
                        </a>
                    </div>

                </div>
                <div class="col-xl-6">
                    <div class="d-flex flex-wrap about-products-detials2 justify-content-center">
                        <a href="#" class="bg-imgesetting3 position-relative"
                           style="background-image: url({{asset('assets/images/bg-imges/women-fashion.png')}});">
                            <div class="porducts-bg2">
                                <small class="text-uppercase imgelikebtn3 position-absolute contact-prodctss2">VIEW
                                    DETAILS</small>
                            </div>
                        </a>
                        <a href="#" class="bg-imgesetting3 position-relative"
                           style="background-image: url({{asset('assets/images/bg-imges/7-lo.png')}});">
                            <div class="porducts-bg2">
                                <small class="text-uppercase imgelikebtn3 position-absolute contact-prodctss2">VIEW
                                    DETAILS</small>
                            </div>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </section>--}}
    {{--    backup sections ends--}}

    {{--{!! $page->details !!}--}}


        <section class="about mt-n5 py-0">
            <div class="container-fluid px-0 mx-0">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="about-info">
                            <h4 class="title">

                            </h4>

                            {!! $page->details !!}


                        </div>
                    </div>
                </div>
            </div>
        </section>


    @include('front.partials.footer-upper')
@endsection