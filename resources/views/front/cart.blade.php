@extends('layouts.front')
@section('content')


    <section class="bg-imgesetting  bg-imgefixed "
             style="background-image: url({{asset('assets/images/bg-imges/contect-bg.png') }});">
        <div style="background: #00000099">
            <div class="container py-5">
              {{--  <div class="row pb-3">
                    <div class="col-md-4">
                        <div class="form-group">
                            <select class="form-control lato-new-font" data-placeholder="ALL CATEGORIES"
                                    id="exampleFormControlSelect1">
                                <option>ALL CATEGORIES</option>
                                <option>CATEGORIES 2</option>
                                <option>CATEGORIES 3</option>
                                <option>CATEGORIES 4</option>
                                <option>CATEGORIES 5</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-8">
                        <div class="form-group">
                            <select class="form-control lato-new-font" data-placeholder="SEARCH FOR PRODUCTS"
                                    id="exampleFormControlSelect1">
                                <option>SEARCH FOR PRODUCTS</option>
                                <option>PRODUCTS 2</option>
                                <option>PRODUCTS 3</option>
                                <option>PRODUCTS 4</option>
                                <option>PRODUCTS 5</option>
                            </select>
                        </div>
                    </div>
                </div>--}}
                <div class="row">
                    <div class="col-12">
                        <h1 class="font-weight-bold times-new-font text-uppercase text-white">Your cart <br></h1>
                        <p class="text-uppercase text-white lato-new-font my-3">  <a href="{{ route('front.index') }}">
                                <span class="text-white"> {{ $langg->lang17 }}</span>
                            </a>
                            /
                            <a lass="font-weight-bold" href="{{ route('front.cart') }}">
                                <span class="text-white"> {{ $langg->lang121 }}</span>
                            </a>

                        </p>
                    </div>
                </div>


            </div>
        </div>
    </section>


    <!-- Breadcrumb Area Start -->
    {{--<div class="breadcrumb-area">
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
                <a href="{{ route('front.cart') }}">
                  {{ $langg->lang121 }}
                </a>
              </li>
            </ul>
          </div>
        </div>
      </div>
    </div>--}}
    <!-- Breadcrumb Area End -->

    <!-- Cart Area Start -->
    <section class="cartpage" style="background: #EBEBEB;">
        <div class="container">
            <div class="row">
                <div class="col-lg-8">
                    <div class="left-area bg-white p-2 rounded">
                        <div class="cart-table">
                            <table class="table">
                                @include('includes.form-success')
                                <thead>
                                <tr class="text-uppercase">
                                    <th >{{ $langg->lang122 }}</th>
                                    <th width="30%">{{ $langg->lang539 }}</th>
                                    <th>{{ $langg->lang125 }}</th>
                                    <th>{{ $langg->lang126 }}</th>
                                    <th > <i class="icofont-ui-delete"></i></th>
                                </tr>
                                </thead>
                                <tbody>
                                @if(Session::has('cart'))

                                    @foreach($products as $product)
                                        <tr class="cremove{{ $product['item']['id'].$product['size'].$product['color'].str_replace(str_split(' ,'),'',$product['values']) }}">
                                            <td class="product-img bg-gray2 round-left">
                                                <div class="item border-none">
                                                    {{--  <img src="{{ $product['item']['photo'] ? asset('assets/images/products/'.$product['item']['photo']):asset('assets/images/noimage.png') }}" alt="">--}}
                                                    <p class="name"><a href="{{ route('front.product', $product['item']['slug']) }}">{{mb_strlen($product['item']['name'],'utf-8') > 35 ? mb_substr($product['item']['name'],0,35,'utf-8').'...' : $product['item']['name']}}</a></p>
                                                </div>
                                            </td>

                                            <td class="bg-gray2">
                                                @if(!empty($product['size']))
                                                    <b>{{ $langg->lang312 }}</b>: {{ $product['item']['measure'] }}{{str_replace('-',' ',$product['size'])}} <br>
                                                @endif
                                                @if(!empty($product['color']))
                                                    <div class="d-flex mt-2">
                                                        <b class="pr-1">{{ $langg->lang313 }}</b>:  <span id="color-bar " style="border: 10px solid #{{$product['color'] == "" ? "white" : $product['color']}};border-radius: 5px"></span>
                                                    </div>
                                                @endif

                                                @if(!empty($product['keys']))

                                                    @foreach( array_combine(explode(',', $product['keys']), explode(',', $product['values']))  as $key => $value)

                                                        <b>{{ ucwords(str_replace('_', ' ', $key))  }} : </b> {{ $value }} <br>
                                                    @endforeach

                                                @endif

                                            </td>


                                            <td class="unit-price quantity bg-gray2">
                                                <p class="product-unit-price text-center">
                                                    {{ App\Models\Product::convertPrice($product['item_price']) }}
                                                </p>
                                                @if($product['item']['type'] == 'Physical')

                                                    <div class="qty float-none d-block">
                                                        <ul class="d-flex justify-content-center w-100">
                                                            <input type="hidden" class="prodid" value="{{$product['item']['id']}}">
                                                            <input type="hidden" class="itemid" value="{{$product['item']['id'].$product['size'].$product['color'].str_replace(str_split(' ,'),'',$product['values'])}}">
                                                            <input type="hidden" class="size_qty" value="{{$product['size_qty']}}">
                                                            <input type="hidden" class="size_price" value="{{$product['size_price']}}">
                                                            <li>
                                  <span class="qtminus1 reducing">
                                    <i class="icofont-minus"></i>
                                  </span>
                                                            </li>
                                                            <li>
                                                                <span class="qttotal1 border-0" id="qty{{$product['item']['id'].$product['size'].$product['color'].str_replace(str_split(' ,'),'',$product['values'])}}">{{ $product['qty'] }}</span>
                                                            </li>
                                                            <li >
                                  <span class="qtplus1 adding">
                                    <i class="icofont-plus"></i>
                                  </span>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                @endif


                                            </td>

                                            @if($product['size_qty'])
                                                <input type="hidden" id="stock{{$product['item']['id'].$product['size'].$product['color'].str_replace(str_split(' ,'),'',$product['values'])}}" value="{{$product['size_qty']}}">
                                            @elseif($product['item']['type'] != 'Physical')
                                                <input type="hidden" id="stock{{$product['item']['id'].$product['size'].$product['color'].str_replace(str_split(' ,'),'',$product['values'])}}" value="1">
                                            @else
                                                <input type="hidden" id="stock{{$product['item']['id'].$product['size'].$product['color'].str_replace(str_split(' ,'),'',$product['values'])}}" value="{{$product['stock']}}">
                                            @endif

                                            <td class="total-price bg-gray2">
                                                <p id="prc{{$product['item']['id'].$product['size'].$product['color'].str_replace(str_split(' ,'),'',$product['values'])}}">
                                                    {{ App\Models\Product::convertPrice($product['price']) }}
                                                </p>
                                            </td>
                                            <td class="round-right bg-gray2">
                        <span class="removecart cart-remove cart-remove2 " data-class="cremove{{ $product['item']['id'].$product['size'].$product['color'].str_replace(str_split(' ,'),'',$product['values']) }}" data-href="{{ route('product.cart.remove',$product['item']['id'].$product['size'].$product['color'].str_replace(str_split(' ,'),'',$product['values'])) }}">
                            <i class="icofont-ui-delete"></i> </span>
                                            </td>
                                        </tr>
                                    @endforeach
                                @endif
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                @if(Session::has('cart'))
                    <div class="col-lg-4">
                        <div class="right-area bg-white rounded  border-0">
                            <div class="order-box rounded">
                                <h4 class="title">{{ $langg->lang127 }}</h4>
                                <ul class="order-list d-block">
                                    <li>
                                        <p>
                                            {{ $langg->lang128 }}
                                        </p>
                                        <P>
                                            <b class="cart-total">{{ Session::has('cart') ? App\Models\Product::convertPrice($totalPrice) : '0.00' }}</b>
                                        </P>
                                    </li>
                                    <li>
                                        <p>
                                            {{ $langg->lang129 }}
                                        </p>
                                        <P>
                                            <b class="discount">{{ App\Models\Product::convertPrice(0)}}</b>
                                            <input type="hidden" id="d-val" value="{{ App\Models\Product::convertPrice(0)}}">
                                        </P>
                                    </li>
                                    <li>
                                        <p>
                                            {{ $langg->lang130 }}
                                        </p>
                                        <P>
                                            <b>{{$tx}}%</b>
                                        </P>
                                    </li>
                                </ul>
                                <div class="total-price">
                                    <p>
                                        {{ $langg->lang131 }}
                                    </p>
                                    <p>
                                        <span class="main-total">{{ Session::has('cart') ? App\Models\Product::convertPrice($mainTotal) : '0.00' }}</span>
                                    </p>
                                </div>
                                <div class="cupon-box">
                                    <div id="coupon-link ">
                                        <span danger-color> {{ $langg->lang132 }}</span>
                                    </div>
                                    <form id="coupon-form" class="coupon">
                                        <input type="text" placeholder="{{ $langg->lang133 }}" id="code" required="" autocomplete="off">
                                        <input type="hidden" class="coupon-total" id="grandtotal" value="{{ Session::has('cart') ? App\Models\Product::convertPrice($mainTotal) : '0.00' }}">
                                        <button type="submit">{{ $langg->lang134 }}</button>
                                    </form>
                                </div>
                                <a href="{{ route('front.checkout') }}" class="order-btn">
                                    {{ $langg->lang135 }}
                                </a>
                            </div>
                        </div>
                    </div>
                @endif
            </div>
        </div>
    </section>
    @include('front.partials.footer-upper')
    <!-- Cart Area End -->
@endsection