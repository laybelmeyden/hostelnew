@extends('layouts.master')

@section('content')


<section class="sec3">
    <div class="container">
    <div class="row">
    <div class="col l12 s12 m12 center">
    <p class="p15">УСЛУГИ</p>
    <p class="p16">КОТОРЫЕ ДЕЛАЮТ НАШ ХОСТЕЛ УЮТНЫМ</p>
    </div>
    </div>
    </div>
</section>
<section class="sec3">
    <div class="container">
    <div class="row">
        <!--цикл-->
    @foreach ($uslug as $uslugs )
    <div class="col l12 s12 m12 ots uslu">
    <div class="col l6 m12 s12 ots uslu1">
    <div class="usm">
    <img src="storage/{{ $uslugs->img }}" class="usi"></img>
    </div>
    <div class="usm2">
    <img src="assets/img/pr.png" class="usi1"></img>
    </div>
    </div>
    <div class="col l6 m12 s12 ots">
    <p class="p29">{{ $uslugs->title }}</p>
    <p class="p30">{{ $uslugs->body }}</p>
    </div>
    </div>
    @endforeach
    <!--wjytw wbrkf-->
    </div>
    </div>    
</section>
@endsection