@extends('layouts.master')

@section('content')

<section>
  <div class="paddingnav">
  <div class="slider">
    <ul class="slides">
        @foreach ($slider as $sliders)
        <li>
        <img src="storage/{{ $sliders->img }}">
        <div class="caption center">
        <div class="container">
        <div class="row">
        <div class="col l2 m2 s2 b2">
        <button class="next z-depth-0  center btnsld"><i class="fa fa-4x fa-angle-left" aria-hidden="true"></i></button>
        </div>
        <div class="col l8 s8 m8">
        <p class="p10">{{ $sliders->title }}</p>
        </div>
        <div class="col l2 m2 s2 b2">
        <button class="prev  z-depth-0  center btnsld"><i class="fa fa-4x fa-angle-right" aria-hidden="true"></i></button>
        </div>
        </div>
        </div>
        </div>
        </li>
        @endforeach
      </ul>
  </div>
  </div>
</section>
<section class="frm1">
    <div class="container">
    <div class="row">
    <div class="col l1 m12 s12"></div>
    <div class="col l10 m12 s12 boj alf">
    <form>
    <div class="col l4 m12 s12">
    <input type='text' name="data" class='datepicker-here inp1' placeholder="Выберите дату заезда" />
    </div>
    <div class="col l4 m12 s12">
    <input type='text' name="data1" class='datepicker-here inp1' placeholder="Выберите дату отъезда" />
    </div>
    <div class="col l4 m12 s12">
    <a href="/bronirovanie" class="waves-effect waves-light btn btn2 uu2" type="submit">ЗАБРОНИРОВАТЬ</a>
    </div>
    </form>
    </div>
    <div class="col l1 m12 s12"></div>
    </div>
    </div>
</section>
<section class="sec2">
    <div class="container">
    <div class="row">
    <div class="col l12 s12 m12 center">
    <p class="p2">ДОБРО ПОЖАЛОВАТЬ!</p>
    <p class="p3">В ХОСТЕЛ "ВЫШКА"</p>
    <img src="assets/img/i3.png">
    <p class="p4">Современный, атмосферный хостел в стиле лофт расположен в самом центре Адлера в 5 км. от сочинского Океанариума, в 5 км. от аэропорта и 3 км. от ж/д вокзала, в 300 метрах от ТЦ "Новый Век".
К услугам гостей размещение в общих и двухместных номерах с общей душевой комнатой, бесплатный wi-fi на всей территории, гостевая кухня, патио, индивидуальные локеры для хранения вещей, неохраняемая парковка, современный фитнес-центр на 1-м этаже, велопрокат, прокат горнолыжного снаряжения, автопрокат, круглосуточная стойка регистрации.
В хостеле Вышка всегда идеальная чистота и внимательный персонал!
Хостел Вышка создан путешественниками для путешественников!</p>
    </div>
    </div>
    </div>
</section>
<section class="gallery">
            <div class="container">
            <div class="row">
                @foreach ($nomer as $nomers)
                <div class="col l6 m12 s12 ots">
                <div class="b1">
                <p class="p5_1">{{ $nomers->title }}</p>
                <!--<div class="c1">-->
                <!--    <img src="assets/img/o1.png">-->
                <!--    <img src="assets/img/o1.png">-->
                <!--    <img src="assets/img/o1.png">-->
                <!--</div>-->
                <p class="p6">{{ $nomers->opismain }}</p>
                <p class="p_a"><a href="/nomer{{ $nomers->id }}" class="a2">ПОДРОБНЕЕ ></a></p>
                <a href="/bronirovanie" class="waves-effect waves-light btn btn2 btn3 uu3">ЗАБРОНИРОВАТЬ</a>
                </div>    
                </div>
            <div class="col l6 m12 s12 ots">
            <div class="controls right-align">
			<button class="btn btn4 prev"><i class="fa fa-4x fa-angle-left" aria-hidden="true"></i></button>
			<button class="btn btn4 next" disabled=""><i class="fa fa-4x fa-angle-right" aria-hidden="true"></i></button>
			</div>
			<div class="frame" id="basic2" style="overflow: hidden;">
			<ul class="clearfix">
			    @foreach (json_decode($nomers->images, true) as $image)
				<li>	  
				<img src="{{ URL::to('/storage/'.$image)}}" class="imgye">
				</li>
				@endforeach
			</ul>
			</div>
            </div>
            @endforeach
            </div>
            </div>
        </section>
<section class="ss1">
    <div class="container">
    <div class="row">
    <div class="col l12 s12 m12 center">
    <p class="p2_1">что делает наш хостел</p>
    <p class="p3_1">уютным и комфортным</p>
    </div>
    <div class="col l3 m6 s12   center">
    <div class="r1">
    <img src="assets/img/u1.png" class="uu">
    <p class="p5">лаундж-зона с мультимедийным проектором</p>
    </div>
    </div>
    <div class="col l3 m6 s12 center">
    <div class="r1">
    <img src="assets/img/u2.png" class="uu">
    <p class="p5">гостевая кухня</p>
    </div>
    </div>
    <div class="col l3 m6 s12 center">
    <div class="r1">
    <img src="assets/img/u3.png" class="uu">
    <p class="p5">бесплатный wi-fi</p>
    </div>
    </div>
    <div class="col l3 m6 s12 center">
    <div class="r1">
    <img src="assets/img/u4.png" class="uu">
    <p class="p5">индивидуальные локеры для хранения вещей</p>
    </div>
    </div>
    <div class="col l3 m6 s12 center">
    <div class="r1">
    <img src="assets/img/u5.png" class="uu">
    <p class="p5">патио</p>
    </div>
    </div>
    <div class="col l3 m6 s12 center">
    <div class="r1">
    <img src="assets/img/u6.png" class="uu">
    <p class="p5">бесплатная гостевая парковка</p>
    </div>
    </div>
    <div class="col l3 m6 s12 center">
    <div class="r1">
    <img src="assets/img/u7.png" class="uu">
    <p class="p5">круглосуточная стойка регистрации</p>
    </div>
    </div>
    <div class="col l3 m6 s12 center">
    <div class="r1">
    <img src="assets/img/u9.png" class="uu">
    <p class="p5">фитнес-центр на 1-м этаже здания</p>
    </div>
    </div>
    </div>
    </div>
</section>

<section class="ss2">
    <div class="container">
    <div class="row">
    <div class="col l12 s12 m12 center">
        <p class="p7">ОТЗЫВЫ</p>
    </div>
    <div class="col l12 s12 m12 center">
    <div id="wrapper">
    <div class="col l2 m2 s2">
        <a id="prev1" class="c2" href="#"><i class="fa fa-4x fa-angle-left" aria-hidden="true"></i></a>
    </div>
	<div class="col l8 m6 s6">
	<div id="carousel" class="carus">
	    <!--цикл-->
	    @foreach ($rev as $revs)
	    <div class="col l12 s12 m12">
	   <div class="col l2 s2 m2">
	       <img src="assets/img/b1.png"></img>
	   </div> 
	   <div class="col l10 m10 s10">
	       <p class="p8">{{ $revs->title }}</p>
	       <div class="chert1"></div>
	   </div>
	   <div class="col l2 m2 s2"></div>
	   <div class="col l10 s10 m10">
	       <p class="p9">{{ $revs->body }}</p>
	   </div>
	    </div>
	    @endforeach
	    <!--конец цикла-->
	</div>
	</div>
		<div class="col l2 s2 m2">
		    <a id="next1" class="c2" href="#"><i class="fa fa-4x fa-angle-right" aria-hidden="true"></i></a>
		</div>
	</div>
    </div>
    
    </div>
    </div>
</section>
<section class="s1_1">
  <div class="container">
    <div class="row">
      <div class="col l12 s12 m12 center">
      <p class="p2_2">НАШ РЕЙТИНГ</p>
      </div>
      <div class="col l1 s12 m12"></div>
      <div class="col l2 s12 m6 center">
       <div class="d1">
         <img src="assets/img/n1.png" class="img2">
       </div>
       <p class="p11"><span class="sp1">8.8</span>/10</p>
      </div>
      <div class="col l2 s12 m6 center">
       <div class="d1">
         <img src="assets/img/n2.png" class="img2">
       </div>
       <p class="p11"><span class="sp1">9.1</span>/10</p>
      </div>
      <div class="col l2 s12 m6 center">
       <div class="d1">
         <img src="assets/img/n3.png" class="img2">
       </div>
       <p class="p11"><span class="sp1">4.8</span>/5</p>
      </div>
      <div class="col l2 s12 m6 center">
       <div class="d1">
         <img src="assets/img/n4.png" class="img2">
       </div>
       <p class="p11"><span class="sp1">9.1</span>/10</p>
      </div>
      <div class="col l2 s12 m6 center">
       <div class="d1">
         <img src="assets/img/n5.png" class="img2">
       </div>
       <p class="p11"><span class="sp1">9.1</span>/10</p>
      </div>
    </div>
  </div>
</section>
@endsection