<section class="bg-imgesetting bg-imgefixed "
         style="background-image: url({{asset('assets/images/bg-imges/newsletter-bg2.jpg') }});">

    <div class="container py-5" >
        <div class="row">
            <div class="col-xl-12">
                <h2 class="">{{$gs->popup_title}}</h2>
            </div>
        </div>
        <div class="row ">
            <div class="col-lg-6">
                <p class="">{{$gs->popup_text}}</p>
            </div>
            <div class="col-lg-6">
                <form action="{{route('front.subscribe')}}"  method="POST">
                    {{csrf_field()}}
                    <div class="newsletter2 my-md-0 my-3 position-relative p-1" >
                        <input type="email" autocomplete="off" name="email" placeholder="{{ $langg->lang741 }}" required="" class="form-control ">
                        <button    class="imgelikebtn position-absolute bg-transparent newsletter-btn px-3 text-uppercase font-weight-normal pt-2" id="sub-btn" type="submit">{{ $langg->lang742 }}</button>
                    </div>
                </form>
            </div>
        </div>



    </div>

</section>