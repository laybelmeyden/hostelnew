@extends('layouts.master')

@section('content')


<section class="sec3">
    <div class="container">
    <div class="row">
    <div class="col l12 s12 m12 center">
    <p class="p15">ОТЗЫВЫ</p>
    <p class="p16">что говорят наши посетители о хостеле</p>
    </div>
    </div>
    </div>
</section>
<section class="sec3">
    <div class="container">
    <div class="row">
        <!--цикл-->
    @foreach ($rev as $revs)
    <div class="col l12 s12 m12">
    <div class="card crd1">
    <div class="card-content crd_n1">
	       <div class="v1">
	       <img src="assets/img/b1.png"></img>
	       </div>
	       <div class="v2">
	       <p class="p8">{{ $revs->title }}</p>
	       <div class="chert1"></div>
	       <p class="p9">{{ $revs->body }}</p>
	       </div>
	</div>
    </div>
    </div>
    @endforeach
    <!--цикл-->
    </div>
    </div>
</section>
@endsection