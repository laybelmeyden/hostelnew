@extends('layouts.master')

@section('content')
<section class="sec3">
    <div class="container">
    <div class="row">
    <div class="col l12 s12 m12">
    <ul class="pgwSlider">
    @foreach (json_decode($solo->images, true) as $image)
    <li><img src="{{ URL::to('/storage/'.$image)}}"></li>
    @endforeach
    </ul>
    </div>
    <div class="col l12 s12 m12 center">
    <p class="p35">{{ $solo->title}}</p>
    </div>
    <div class="col l4 s12 m12 center"></div>
    <div class="col l4 s12 m12 center">
    <a href="/bronirovanie" class="waves-effect waves-light btn btn2 btn6 uu4">ЗАБРОНИРОВАТЬ</a>
    </div>
    <div class="col l4 s12 m12 center"></div>
    <div class="col l12 s12 m12">
    {!! $solo->body !!}
    </div>
    </div>
    </div>
</section>
@endsection