@extends('layouts.master')

@section('content')
    <section class="sec3">
        <div class="container">
        <div class="row">
        <div class="col l12 s12 m12 center">
        <p class="p15">Фотографии</p>
        </div>
        </div>
        </div>
    </section>
    <section class="sec3">
    <div class="container">
    <div class="row">
    <div class="col l12 s12 m12">
      <ul class="tabs">
        <li class="col l3"></li>
        <li class="tab col l2 s2 m2"><a class="active t1" href="#hostel">ХОСТЕЛ</a></li>
        <li class="tab col l2 s2 m2"><a class="t1" href="#nomera">НОМЕРА</a></li>
        <li class="tab col l2 s2 m2"><a class="t1" href="#sanuzel">САНУЗЕЛ</a></li>
        <li class="col l3"></li>
      </ul>
    </div>
    @foreach ($galler as $gallers)
    <div id="{{ $gallers -> kil}}" class="col s12">
      @foreach (json_decode($gallers->images, true) as $image)
          <div class="col l4 m4 s4">
          <div class="image__wrapper">
          <img src="{{ URL::to('/storage/'.$image)}}" class="responsive-img minimized">
          </div>
          </div>
      @endforeach
    </div>
    @endforeach
    </div>
    </div>
    </section>
@endsection