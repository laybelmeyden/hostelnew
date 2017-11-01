@extends('layouts.master')

@section('content')
<section class="sec3">
    <div class="container center">
    <div class="row">
    <div class="col l12 s12 m12 sol1">
    <p class="p35">{{ $solo->title}}</p>
    </div>
    <div class="col l12 s12 m12">
    <img src="storage/{{ $solo->img }}" class="responsive-img">
    </div>
    <div class="col l12 s12 m12">
    {!! $solo->body !!}
    </div>
    </div>
    </div>
</section>
@endsection