@extends('layouts.front')
@section('content')
   {{-- <section class="bg-imgesetting  py-1"
             style="background-image: url({{asset('assets/images/bg-imges/banner-02.jpg') }});">
        <div class="container">
  <div class="row">
                <div class="col-12">
                    <p class="mt-2 lato-new-font text-uppercase mb-2 pt-5">Vender stores</p>
                    <h2>Brandzo <br>
                        Mall</h2>
                    <p class="text-uppercase lato-new-font mb-5 mt-5 pb-3">
                        <a href="{{route('front.index')}}">{{ $langg->lang17 }}</a>/
                        @if (!empty($cat))
                            <a href="{{route('front.category', $cat->slug)}}">{{ $cat->name }}</a>/
                        @endif
                        @if (!empty($subcat))
                            <a href="{{route('front.category', [$cat->slug, $subcat->slug])}}">{{ $subcat->name }}</a>/
                        @endif
                        @if (!empty($childcat))
                            <a href="{{route('front.category', [$cat->slug, $subcat->slug, $childcat->slug])}}">{{ $childcat->name }}</a>/
                        @endif
                        @if (empty($childcat) && empty($subcat) && empty($cat))
                            <a href="{{route('front.category')}}">{{ $langg->lang36 }}</a>
                        @endif
                    </p>
                </div>
            </div>
        </div>
    </section>--}}
    <div class="breadcrumb-area" style="background: #eeeeee">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <ul class="pages">
                        <li>
                            <a href="{{route('front.index')}}">{{ $langg->lang17 }}</a>
                        </li>
                        @if (!empty($cat))
                            <li>
                                <a href="{{route('front.category', $cat->slug)}}">{{ $cat->name }}</a>
                            </li>
                        @endif
                        @if (!empty($subcat))
                            <li>
                                <a href="{{route('front.category', [$cat->slug, $subcat->slug])}}">{{ $subcat->name }}</a>
                            </li>
                        @endif
                        @if (!empty($childcat))
                            <li>
                                <a href="{{route('front.category', [$cat->slug, $subcat->slug, $childcat->slug])}}">{{ $childcat->name }}</a>
                            </li>
                        @endif
                        @if (empty($childcat) && empty($subcat) && empty($cat))
                            <li>
                                <a href="{{route('front.category')}}">{{ $langg->lang36 }}</a>
                            </li>
                        @endif

                    </ul>
                </div>
            </div>
        </div>
    </div>
    <!-- Breadcrumb Area Start -->



    <!-- Breadcrumb Area End -->
    <!-- SubCategori Area Start -->
    <section class="sub-categori " style="background: #eeeeee">
        <div class="container">
            <div class="row">
                @include('includes.catalog')
                <div class="col-lg-9 order-first order-lg-last ajax-loader-parent">
                    <div class="row">
                        <div class="col-12">
                            <div class="d-flex flex-wrap justify-content-center justify-content-sm-between">
                                <div>
                                   {{-- <form action="">
                                        <div class="d-flex vander-serch-div">
                                            <div><input type="text" class="bg-transparent" placeholder="SEARCH" ></div>
                                            <div >
                                                <button type="submit" class="bg-transparent border-0"><i   class="fa fa-search cursor-pointer"></i></button>
                                            </div>
                                        </div>
                                    </form>--}}
                                </div>
                                <div>
                                    @include('includes.filter')
                                 {{--   <div class="d-flex mt-3 mt-sm-2">
                                        <div class="mx-1">VIEW: </div>
                                        <div class="mx-1"><a href=""><i class="fas cursor-pointer header-icon-hover fa-th"></i></a></div>
                                        <div class="mx-1"><a href=""><i class="fas cursor-pointer header-icon-hover  fa-th-list"></i></a></div>
                                    </div>--}}
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="categori-item-area">
                        <div class="row mt-2" id="ajaxContent">
                            @include('includes.product.filtered-products')
                        </div>
                        <div id="ajaxLoader" class="ajax-loader" style="background: url({{asset('assets/images/'.$gs->loader)}}) no-repeat scroll center center rgba(0,0,0,.6);"></div>
                    </div>

                    {{--    <div class="row mt-3">
                            @for ($i = 1; $i <= 12; $i++)
                                <div class="col-md-4">
                                    <a href="">
                                        <div class="card border-0 mx-1 my-2 shadow" style="width: 100%">
                                            <img src="{{asset('assets/images/product/product'.$i.'.png') }}" class="card-img-top rounded" alt="...">
                                            <div class="card-body pt-2">
                                                <h5 class="font-weight-bold lato-new-font-o">Product</h5>
                                                <h5 class="font-weight-bold danger-color lato-new-font-o">Rs.380</h5>
                                                <div class="d-flex">
                                                    <div><del class="gray-muted1 opacity-50">Rs.690</del></div>
                                                    <div><span class="gray-muted2 font-weight-bold mx-2">-30%</span></div>
                                                </div>
                                                <div class="d-flex flex-wrap justify-content-between">
                                                    <div>
                                                        <div class="d-flex mt-2">
                                                            <span><i class="fas bg-yellow1  fa-star"></i></span>
                                                            <span><i class="fas bg-yellow1  fa-star"></i></span>
                                                            <span><i class="fas bg-yellow1  fa-star"></i></span>
                                                            <span><i class="fas bg-yellow1  fa-star"></i></span>
                                                            <span><i class="fas bg-yellow1 fa-star"></i></span>
                                                            <span class="gray-muted2 font-weight-bold">(126)</span>
                                                        </div>
                                                    </div>
                                                    <div class="pt-2">
                                                        <small class="lato-new-font-o gray-muted1 mt-3">Pakistan</small>
                                                    </div>
                                                </div>
                                                --}}{{--<a href="#" class="btn btn-primary">Go somewhere</a>--}}{{--
                                            </div>
                                        </div>
                                    </a>
                                </div>
                            @endfor

                        </div>--}}
                    <div class="row mt-3">
                        <div class="col-12">
                            <div class="d-flex flex-wrap float-right px-3 bg-white product-pagincationa rounded py-2">
                                <div><span class="mx-2 cursor-pointer"><<</span></div>
                                <div><span  class="mx-2 cursor-pointer danger-color ">1</span></div>
                                <div><span  class="mx-2 cursor-pointer">2</span></div>
                                <div><span  class="mx-2 cursor-pointer">4</span></div>
                                <div><span  class="mx-2 cursor-pointer">5</span></div>
                                <div><span  class="mx-2 cursor-pointer">>></span></div>
                            </div>
                        </div>
                    </div>

                    {{--           ************************************--}}
                    {{--   <div class="right-area" id="app">

                          @include('includes.filter')
                          <div class="categori-item-area">
                            <div class="row" id="ajaxContent">
                              @include('includes.product.filtered-products')
                            </div>
                            <div id="ajaxLoader" class="ajax-loader" style="background: url({{asset('assets/images/'.$gs->loader)}}) no-repeat scroll center center rgba(0,0,0,.6);"></div>
                          </div>

                       </div>--}}
                </div>
            </div>
        </div>
    </section>
    <!-- SubCategori Area End -->
@endsection


@section('scripts')

    <script>

        $(document).ready(function () {

            // when dynamic attribute changes
            $(".attribute-input, #sortby").on('change', function () {
                $("#ajaxLoader").show();
                filter();
            });

            // when price changed & clicked in search button
            $(".filter-btn").on('click', function (e) {
                e.preventDefault();
                $("#ajaxLoader").show();
                filter();
            });
        });

        function filter() {
            let filterlink = '';

            if ($("#prod_name").val() != '') {
                if (filterlink == '') {
                    filterlink += '{{route('front.category', [Request::route('category'), Request::route('subcategory'), Request::route('childcategory')])}}' + '?search=' + $("#prod_name").val();
                } else {
                    filterlink += '&search=' + $("#prod_name").val();
                }
            }

            $(".attribute-input").each(function () {
                if ($(this).is(':checked')) {
                    if (filterlink == '') {
                        filterlink += '{{route('front.category', [Request::route('category'), Request::route('subcategory'), Request::route('childcategory')])}}' + '?' + $(this).attr('name') + '=' + $(this).val();
                    } else {
                        filterlink += '&' + $(this).attr('name') + '=' + $(this).val();
                    }
                }
            });

            if ($("#sortby").val() != '') {
                if (filterlink == '') {
                    filterlink += '{{route('front.category', [Request::route('category'), Request::route('subcategory'), Request::route('childcategory')])}}' + '?' + $("#sortby").attr('name') + '=' + $("#sortby").val();
                } else {
                    filterlink += '&' + $("#sortby").attr('name') + '=' + $("#sortby").val();
                }
            }

            if ($("#min_price").val() != '') {
                if (filterlink == '') {
                    filterlink += '{{route('front.category', [Request::route('category'), Request::route('subcategory'), Request::route('childcategory')])}}' + '?' + $("#min_price").attr('name') + '=' + $("#min_price").val();
                } else {
                    filterlink += '&' + $("#min_price").attr('name') + '=' + $("#min_price").val();
                }
            }

            if ($("#max_price").val() != '') {
                if (filterlink == '') {
                    filterlink += '{{route('front.category', [Request::route('category'), Request::route('subcategory'), Request::route('childcategory')])}}' + '?' + $("#max_price").attr('name') + '=' + $("#max_price").val();
                } else {
                    filterlink += '&' + $("#max_price").attr('name') + '=' + $("#max_price").val();
                }
            }

            // console.log(filterlink);
            console.log(encodeURI(filterlink));
            $("#ajaxContent").load(encodeURI(filterlink), function (data) {
                // add query string to pagination
                addToPagination();
                $("#ajaxLoader").fadeOut(1000);
            });
        }

        // append parameters to pagination links
        function addToPagination() {
            // add to attributes in pagination links
            $('ul.pagination li a').each(function () {
                let url = $(this).attr('href');
                let queryString = '?' + url.split('?')[1]; // "?page=1234...."

                let urlParams = new URLSearchParams(queryString);
                let page = urlParams.get('page'); // value of 'page' parameter

                let fullUrl = '{{route('front.category', [Request::route('category'),Request::route('subcategory'),Request::route('childcategory')])}}?page=' + page + '&search=' + '{{request()->input('search')}}';

                $(".attribute-input").each(function () {
                    if ($(this).is(':checked')) {
                        fullUrl += '&' + encodeURI($(this).attr('name')) + '=' + encodeURI($(this).val());
                    }
                });

                if ($("#sortby").val() != '') {
                    fullUrl += '&sort=' + encodeURI($("#sortby").val());
                }

                if ($("#min_price").val() != '') {
                    fullUrl += '&min=' + encodeURI($("#min_price").val());
                }

                if ($("#max_price").val() != '') {
                    fullUrl += '&max=' + encodeURI($("#max_price").val());
                }

                $(this).attr('href', fullUrl);
            });
        }

        $(document).on('click', '.categori-item-area .pagination li a', function (event) {
            event.preventDefault();
            if ($(this).attr('href') != '#' && $(this).attr('href')) {
                $('#preloader').show();
                $('#ajaxContent').load($(this).attr('href'), function (response, status, xhr) {
                    if (status == "success") {
                        $('#preloader').fadeOut();
                        $("html,body").animate({
                            scrollTop: 0
                        }, 1);

                        addToPagination();
                    }
                });
            }
        });

    </script>

    <script type="text/javascript">

        $(function () {

            $("#slider-range").slider({
                range: true,
                orientation: "horizontal",
                min: 0,
                max: 10000000,
                values: [{{ isset($_GET['min']) ? $_GET['min'] : '0' }}, {{ isset($_GET['max']) ? $_GET['max'] : '10000000' }}],
                step: 5,

                slide: function (event, ui) {
                    if (ui.values[0] == ui.values[1]) {
                        return false;
                    }

                    $("#min_price").val(ui.values[0]);
                    $("#max_price").val(ui.values[1]);
                }
            });

            $("#min_price").val($("#slider-range").slider("values", 0));
            $("#max_price").val($("#slider-range").slider("values", 1));

        });

    </script>



@endsection