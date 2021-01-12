@extends('layouts.front')


@section('content')

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
                            <a href="{{ route('front.contact') }}">
                                {{ $langg->lang20 }}
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>--}}
    <!-- Breadcrumb Area End -->


    <!-- Contact Us Area Start -->
    <section id="particles-js" class="contact-wrap" style="width: 100%;background: #F4F4F4">
        <div class="container">
            <div class="row">
                <div class="col-12 align-self-center">
                    <div class="w-100 flex-column d-flex  justify-content-center contact-wrap position-absolute ">
                        <h1 class="text-uppercase contact-headinga times-new-font  ">LET's connect</h1>
                        <p class=" lato-new-font">We'd love to help you connect with us for more amazing products</p>
                        <p class="lato-new-font text-uppercase  mt-4 pb-1">HOME / <b>Contact Us</b></p>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="bg-imgesetting bg-imgefixed py-5"
             style="background-image: url({{asset('assets/images/bg-imges/contect-bg.png') }});">
        <div class="container  px-0">
            <div class="row pb-4">
                <div class="col-lg-5">
                    <div class="p-3 mt-4 h-100 rounded bg-white">
                        <p class="text-uppercase lato-new-font font-weight-bolder  text-gray1"><b>Information
                                questions</b></p>
                        <p class="text-uppercase border-b-p pb-2  lato-new-font"><b>FREQUENTLY ASKED QUESTIONS</b></p>
                        <div class="accordion" id="accordionExample">
                            <div class="   border-b-p mb-1">
                                <div class="card-header px-0 pb-3  pb-0 border-0 bg-transparent" id="headingOne">
                                    <span class="w-100 mb-1">
                                        <span class="text-left w-100 font-weight-bold collapsed" type="button"
                                              data-toggle="collapse"
                                              data-target="#collapseOne" aria-expanded="true"
                                              aria-controls="collapseOne">
                                         <span class="d-flex justify-content-between">
                                              <span>Will I receive the same product that I see in the picture?</span>
                                           <span><i class="fas ml-2 fa-chevron-down"></i></span>
                                         </span>
                                        </span>
                                    </span>
                                </div>

                                <div id="collapseOne" class="collapse" aria-labelledby="headingOne"
                                     data-parent="#accordionExample">
                                    <div class="card-body pt-1">Consectetur cras scelerisque dis nec mi vestibulum
                                        ullamcorper turpis enim natoque tempus a malesuada
                                        suspendisse iaculis adipiscing himenaeos tincidunt.Tellus
                                        pharetra dis nostra urna a scelerisque id parturient
                                        ullamcorper ullamcorper class ad consectetur tristique et.
                                        Hendrerit mollis facilisi odio a montes scelerisque a
                                        scelerisque justo a praesent conubia aenean mi tempor.
                                    </div>
                                </div>
                            </div>
                            <div class="border-b-p">
                                <div class="card-header px-0 pb-3 border-0 bg-transparent" id="headingTwo">
                                   <span class="w-100 mb-1">
                                        <span class="text-left w-100 font-weight-bold collapsed" type="button"
                                              data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false"
                                              aria-controls="collapseTwo">
                                         <span class="d-flex  justify-content-between">
                                              <span>Where can I view my sales receipt?</span>
                                           <span><i class="fas ml-2 fa-chevron-down"></i></span>
                                         </span>
                                        </span>
                                    </span>
                                </div>
                                <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo"
                                     data-parent="#accordionExample">
                                    <div class="card-body mt-1">Consectetur cras scelerisque dis nec mi vestibulum
                                        ullamcorper turpis enim natoque tempus a malesuada
                                        suspendisse iaculis adipiscing himenaeos tincidunt.Tellus
                                        pharetra dis nostra urna a scelerisque id parturient
                                        ullamcorper ullamcorper class ad consectetur tristique et.
                                        Hendrerit mollis facilisi odio a montes scelerisque a
                                        scelerisque justo a praesent conubia aenean mi tempor.
                                    </div>
                                </div>
                            </div>
                            <div class=" border-b-p">
                                <div class="card-header px-0 pb-3 border-0 bg-transparent" id="headingThree">
                                    <span class="w-100 mb-1">
                                        <span class="text-left w-100 font-weight-bold collapsed" type="button"
                                              data-toggle="collapse" data-target="#collapseThree" aria-expanded="false"
                                              aria-controls="collapseThree">
                                         <span class="d-flex  justify-content-between">
                                              <span>How can I return an item?</span>
                                           <span><i class="fas ml-2 fa-chevron-down"></i></span>
                                         </span>
                                        </span>
                                    </span>
                                </div>
                                <div id="collapseThree" class="collapse" aria-labelledby="headingThree"
                                     data-parent="#accordionExample">
                                    <div class="card-body mt-1">Consectetur cras scelerisque dis nec mi vestibulum
                                        ullamcorper turpis enim natoque tempus a malesuada
                                        suspendisse iaculis adipiscing himenaeos tincidunt.Tellus
                                        pharetra dis nostra urna a scelerisque id parturient
                                        ullamcorper ullamcorper class ad consectetur tristique et.
                                        Hendrerit mollis facilisi odio a montes scelerisque a
                                        scelerisque justo a praesent conubia aenean mi tempor.
                                    </div>
                                </div>
                            </div>
                            <div class=" border-b-p">
                                <div class="card-header px-0 pb-3 border-0 bg-transparent" id="headingThree1">

                                    <span class="w-100 mb-1">
                                        <span class="text-left w-100 font-weight-bold collapsed" type="button"
                                              data-toggle="collapse" data-target="#collapseThree1" aria-expanded="false"
                                              aria-controls="collapseThree1">
                                         <span class="d-flex  justify-content-between">
                                              <span>Will you restock items indicated as “out of stock?”</span>
                                           <span><i class="fas ml-2 fa-chevron-down"></i></span>
                                         </span>
                                        </span>
                                    </span>

                                </div>
                                <div id="collapseThree1" class="collapse" aria-labelledby="headingThree1"
                                     data-parent="#accordionExample">
                                    <div class="card-body pt-1">Consectetur cras scelerisque dis nec mi vestibulum
                                        ullamcorper turpis enim natoque tempus a malesuada
                                        suspendisse iaculis adipiscing himenaeos tincidunt.Tellus
                                        pharetra dis nostra urna a scelerisque id parturient
                                        ullamcorper ullamcorper class ad consectetur tristique et.
                                        Hendrerit mollis facilisi odio a montes scelerisque a
                                        scelerisque justo a praesent conubia aenean mi tempor.
                                    </div>
                                </div>
                            </div>
                            <div class=" border-b-p">
                                <div class="card-header px-0 pb-3 border-0 bg-transparent" id="headingThree2">
                                    <span class="w-100 mb-1">
                                        <span class="text-left w-100 font-weight-bold collapsed" type="button"
                                              data-toggle="collapse" data-target="#collapseThree2" aria-expanded="false"
                                              aria-controls="collapseThree2">
                                         <span class="d-flex  justify-content-between">
                                              <span> Where can I ship my order?</span>
                                           <span><i class="fas ml-2 fa-chevron-down"></i></span>
                                         </span>
                                        </span>
                                    </span>
                                </div>
                                <div id="collapseThree2" class="collapse" aria-labelledby="headingThree2"
                                     data-parent="#accordionExample">
                                    <div class="card-body pt-1">Consectetur cras scelerisque dis nec mi vestibulum
                                        ullamcorper turpis enim natoque tempus a malesuada
                                        suspendisse iaculis adipiscing himenaeos tincidunt.Tellus
                                        pharetra dis nostra urna a scelerisque id parturient
                                        ullamcorper ullamcorper class ad consectetur tristique et.
                                        Hendrerit mollis facilisi odio a montes scelerisque a
                                        scelerisque justo a praesent conubia aenean mi tempor.
                                    </div>
                                </div>
                            </div>
                            <div class=" border-b-p">
                                <div class="card-header px-0 pb-3 border-0 bg-transparent" id="headingThree3">
                                    <span class="w-100 mb-1">
                                        <span class="text-left w-100 font-weight-bold collapsed" type="button"
                                              data-toggle="collapse" data-target="#collapseThree3" aria-expanded="false"
                                              aria-controls="collapseThree3">
                                         <span class="d-flex  justify-content-between">
                                              <span> Where can I view my sales receipt?</span>
                                           <span><i class="fas ml-2 fa-chevron-down"></i></span>
                                         </span>
                                        </span>
                                    </span>
                                </div>
                                <div id="collapseThree3" class="collapse" aria-labelledby="headingThree3"
                                     data-parent="#accordionExample">
                                    <div class="card-body pt-1">Consectetur cras scelerisque dis nec mi vestibulum
                                        ullamcorper turpis enim natoque tempus a malesuada
                                        suspendisse iaculis adipiscing himenaeos tincidunt.Tellus
                                        pharetra dis nostra urna a scelerisque id parturient
                                        ullamcorper ullamcorper class ad consectetur tristique et.
                                        Hendrerit mollis facilisi odio a montes scelerisque a
                                        scelerisque justo a praesent conubia aenean mi tempor.
                                    </div>
                                </div>
                            </div>
                            <div class=" border-b-p">
                                <div class="card-header px-0 pb-3 border-0 bg-transparent" id="headingThree4">
                                    <p class="mb-1">
                                        <span class="text-left font-weight-bold collapsed">

                                        </span>
                                    </p>
                                    <span class="w-100 mb-1">
                                        <span class="text-left w-100 font-weight-bold collapsed" type="button"
                                              data-toggle="collapse" data-target="#collapseThree4" aria-expanded="false"
                                              aria-controls="collapseThree4">
                                         <span class="d-flex  justify-content-between">
                                              <span> Where can I view my sales receipt?</span>
                                           <span><i class="fas ml-2 fa-chevron-down"></i></span>
                                         </span>
                                        </span>
                                    </span>
                                </div>
                                <div id="collapseThree4" class="collapse" aria-labelledby="headingThree4"
                                     data-parent="#accordionExample">
                                    <div class="card-body pt-1">Consectetur cras scelerisque dis nec mi vestibulum
                                        ullamcorper turpis enim natoque tempus a malesuada
                                        suspendisse iaculis adipiscing himenaeos tincidunt.Tellus
                                        pharetra dis nostra urna a scelerisque id parturient
                                        ullamcorper ullamcorper class ad consectetur tristique et.
                                        Hendrerit mollis facilisi odio a montes scelerisque a
                                        scelerisque justo a praesent conubia aenean mi tempor.
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-7 mt-lg-0  mt-4">
                    <div class="p-3 mt-4 rounded h-100 bg-white">
                        <p class="text-uppercase lato-new-font font-weight-bolder  text-gray1">CONTACT US</p>
                        <p class="text-uppercase pb-2  lato-new-font"><b>contact us for any queries</b></p>
                        <form id="contactform" action="{{route('front.contact.submit')}}" method="POST">
                            {{csrf_field()}}
                            @include('includes.admin.form-both')
                            <div class="contact-forma">
                                <div class="row ">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <input type="text"placeholder="{{ $langg->lang47 }} *" class="form-control" required=""
                                                   id="your-name" >
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <input type="email"placeholder="{{ $langg->lang49 }} *" class="form-control" required=""
                                                   id="your-email">
                                        </div>
                                    </div>
                                </div>
                                <div class="row ">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <input type="text" placeholder="{{ $langg->lang48 }} *" class="form-control" required=""
                                                   id="your-number">
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <input type="email" placeholder="COMPANY" class="form-control" required=""
                                                   id="your-campany">
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <textarea class="form-control" rows="7" placeholder="{{ $langg->lang50 }} *" required=""></textarea>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-12">
                                        @if($gs->is_capcha == 1)

                                            <ul class="captcha-area d-flex flex-column flex-sm-row-reverse justify-content-sm-between">
                                                <li>
                                                    <p class="mx-auto text-center">
                                                        <img class="codeimg1" alt=""
                                                             src="{{asset("assets/images/capcha_code.png")}}">
                                                        <i class="fas fa-sync-alt pointer refresh_code"></i>
                                                    </p>

                                                </li>
                                                <li>
                                                    <input name="codes" type="text" class="input-field"
                                                           placeholder="{{ $langg->lang51 }}" required="">

                                                </li>
                                            </ul>

                                        @endif
                                    </div>
                                    <div class="col-12">
                                        <input type="hidden" name="to" value="{{ $ps->contact_email }}">
                                        <button class="imgelikebtn float-right"
                                                type="submit">{{ $langg->lang52 }}</button>

                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>



    {{--  <section class="contact-us">
          <div class="container">

              <div class="row">
                  <div class="col-lg-12">
                      <div class="contact-section-title">
                          {!! $ps->contact_title !!}
                          {!! $ps->contact_text !!}
                      </div>
                  </div>
              </div>
              <div class="row justify-content-between">
                  <div class="col-xl-7 col-lg-7 col-md-6">
                      <div class="left-area">
                          <div class="contact-form">
                              <div class="gocover"
                                   style="background: url({{ asset('assets/images/'.$gs->loader) }}) no-repeat scroll center center rgba(45, 45, 45, 0.5);"></div>
                              <form id="contactform" action="{{route('front.contact.submit')}}" method="POST">
                                  {{csrf_field()}}
                                  @include('includes.admin.form-both')

                                  <div class="form-input">
                                      <input type="text" name="name" placeholder="{{ $langg->lang47 }} *" required="">
                                      <i class="icofont-user-alt-5"></i>
                                  </div>
                                  <div class="form-input">
                                      <input type="text" name="phone" placeholder="{{ $langg->lang48 }} *">
                                      <i class="icofont-ui-call"></i>
                                  </div>
                                  <div class="form-input">
                                      <input type="email" name="email" placeholder="{{ $langg->lang49 }} *" required="">
                                      <i class="icofont-envelope"></i>
                                  </div>
                                  <div class="form-input">
                                      <textarea name="text" placeholder="{{ $langg->lang50 }} *" required=""></textarea>
                                  </div>

                                  @if($gs->is_capcha == 1)

                                      <ul class="captcha-area">
                                          <li>
                                              <p><img class="codeimg1" src="{{asset("assets/images/capcha_code.png")}}"
                                                      alt=""> <i class="fas fa-sync-alt pointer refresh_code"></i></p>

                                          </li>
                                          <li>
                                              <input name="codes" type="text" class="input-field"
                                                     placeholder="{{ $langg->lang51 }}" required="">

                                          </li>
                                      </ul>

                                  @endif


                                  <input type="hidden" name="to" value="{{ $ps->contact_email }}">
                                  <button class="submit-btn" type="submit">{{ $langg->lang52 }}</button>
                              </form>
                          </div>
                      </div>
                  </div>
                  <div class="col-xl-4 col-lg-5 col-md-6">
                      <div class="right-area">

                          @if($ps->site != null || $ps->email != null )
                              <div class="contact-info ">
                                  <div class="left ">
                                      <div class="icon">
                                          <i class="icofont-email"></i>
                                      </div>
                                  </div>
                                  <div class="content d-flex align-self-center">
                                      <div class="content">
                                          @if($ps->site != null && $ps->email != null)
                                              <a href="{{$ps->site}}" target="_blank">{{$ps->site}}</a>
                                              <a href="mailto:{{$ps->email}}">{{$ps->email}}</a>
                                          @elseif($ps->site != null)
                                              <a href="{{$ps->site}}" target="_blank">{{$ps->site}}</a>
                                          @else
                                              <a href="mailto:{{$ps->email}}">{{$ps->email}}</a>
                                          @endif
                                      </div>
                                  </div>
                              </div>
                          @endif
                          @if($ps->street != null)
                              <div class="contact-info">
                                  <div class="left">
                                      <div class="icon">
                                          <i class="icofont-google-map"></i>
                                      </div>
                                  </div>
                                  <div class="content d-flex align-self-center">
                                      <div class="content">
                                          <p>
                                              @if($ps->street != null)
                                                  {!! $ps->street !!}
                                              @endif
                                          </p>
                                      </div>
                                  </div>
                              </div>
                          @endif
                          @if($ps->phone != null || $ps->fax != null )
                              <div class="contact-info">
                                  <div class="left">
                                      <div class="icon">
                                          <i class="icofont-smart-phone"></i>
                                      </div>
                                  </div>
                                  <div class="content d-flex align-self-center">
                                      <div class="content">
                                          @if($ps->phone != null && $ps->fax != null)
                                              <a href="tel:{{$ps->phone}}">{{$ps->phone}}</a>
                                              <a href="tel:{{$ps->fax}}">{{$ps->fax}}</a>
                                          @elseif($ps->phone != null)
                                              <a href="tel:{{$ps->phone}}">{{$ps->phone}}</a>
                                          @else
                                              <a href="tel:{{$ps->fax}}">{{$ps->fax}}</a>
                                          @endif
                                      </div>
                                  </div>
                              </div>
                          @endif


                          <div class="social-links">
                              <h4 class="title">{{ $langg->lang53 }} :</h4>
                              <ul>

                                  @if(App\Models\Socialsetting::find(1)->f_status == 1)
                                      <li>
                                          <a href="{{ App\Models\Socialsetting::find(1)->facebook }}" class="facebook"
                                             target="_blank">
                                              <i class="fab fa-facebook-f"></i>
                                          </a>
                                      </li>
                                  @endif

                                  @if(App\Models\Socialsetting::find(1)->g_status == 1)
                                      <li>
                                          <a href="{{ App\Models\Socialsetting::find(1)->gplus }}" class="google-plus"
                                             target="_blank">
                                              <i class="fab fa-google-plus-g"></i>
                                          </a>
                                      </li>
                                  @endif

                                  @if(App\Models\Socialsetting::find(1)->t_status == 1)
                                      <li>
                                          <a href="{{ App\Models\Socialsetting::find(1)->twitter }}" class="twitter"
                                             target="_blank">
                                              <i class="fab fa-twitter"></i>
                                          </a>
                                      </li>
                                  @endif

                                  @if(App\Models\Socialsetting::find(1)->l_status == 1)
                                      <li>
                                          <a href="{{ App\Models\Socialsetting::find(1)->linkedin }}" class="linkedin"
                                             target="_blank">
                                              <i class="fab fa-linkedin-in"></i>
                                          </a>
                                      </li>
                                  @endif

                                  @if(App\Models\Socialsetting::find(1)->d_status == 1)
                                      <li>
                                          <a href="{{ App\Models\Socialsetting::find(1)->dribble }}" class="dribbble"
                                             target="_blank">
                                              <i class="fab fa-dribbble"></i>
                                          </a>
                                      </li>
                                  @endif

                              </ul>
                          </div>
                      </div>
                  </div>
              </div>
          </div>
      </section>--}}
    <!-- Contact Us Area End-->

    @include('front.partials.footer-upper')

@endsection