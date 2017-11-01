@extends('layouts.master')

@section('content')

<section class="sec3">
    <div class="container">
    <div class="row">
    <div class="col l12 s12 m12 center">
    <p class="p15">НОМЕРА</p>
    <p class="p16_1">Хостел "Вышка" предлагает гостям двухместные и многоместные номера.</p>
    <p class="p27">Все номера оборудованы индивидуальными локерами для хранения вещей, отдельные номера оборудованы кондиционерами.</p>
    </div>
    </div>
    </div>
</section>
<section class="sec3">
    <div class="container">
    <div class="row">
    @foreach ($nomer as $nomers)
    <div class="col l6 m12 s12">
    <div class="pic">
        <div class="nom">
        <p class="p28">{{ $nomers->title }}</p>
        </div>
    	<img src="storage/{{ $nomers->img }}" class="img_thumbnail" alt="Pic"/>
    	<a href="/nomer{{ $nomers->id }}" class="a_n">
    	<span class="pic-caption top-to-bottom">
    	<p>ПОДРОБНЕЕ</p>
    	</span>
    	</a>
    	<div class="nom1">
    	<a href="{{ $nomers->ssilka }}" class="waves-effect waves-light btn btn_n">ЗАБРОНИРОВАТЬ</a>
    	</div>
	</div>
    </div>
    @endforeach
    </div>
    </div>
</section>

@endsection