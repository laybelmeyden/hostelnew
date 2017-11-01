@extends('layouts.master')

@section('content')

<section class="sec3">
    <div class="container">
    <div class="row">
    <div class="col l12 s12 m12 center">
    <p class="p15">НАШИ КОНТАКТЫ</p>
    <p class="p16">ХОСТЕЛ ИМЕЕТ УДОБНОЕ МЕСТОрасПОЛОЖЕНИЕ с необходимой инфраструктурой </p>
    </div>
    </div>
    </div>
</section>
<section class="sec3">
    <div class="container">
    <div class="col l12 s12 m12">
    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2897.431182801184!2d39.923418314921!3d43.4307098748082!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x40f5bfc196452e8f%3A0xbcb4b5ec04de7f7b!2z0KXQvtGB0YLQtdC7IFfRjElTSEtB!5e0!3m2!1sru!2sru!4v1508262070629" class="ya" frameborder="0" style="border:0" allowfullscreen></iframe>
    </div>
    </div>
</section>
<section class="sec3">
    <div class="container">
    <div class="row">
    <div class="col l6 m12 s12">
        <p class="p23">ЧТО ЕСТЬ ПОБЛИЗОСТИ: </p>
        <p class="p24">Банкоматы: ВТБ, РосБанк, БинБанк<br>
Торговый центр “Орбита”<br>
ТРК City Plaza<br>
Кинотеатры: City Stars и Комсомолец<br>
Столовая “Иван да Марья”<br>
Кафе “Алексис”</p>
    </div>
    <div class="col l6 m12 s12">
        <p class="p25">Если у вас есть какие-то вопросы к нам, заполните форму обратной связи:</p>
        <form>
        <div class="input-field col l12 s12 m12">
          <input placeholder="Ваше имя" name="name" type="text" class="validate inp_con">
        </div>
        <div class="input-field col l12 s12 m12">
          <input placeholder="E-mail" name="email" type="email" class="validate inp_con">
        </div>
        <div class="input-field col l12 s12 m12">
          <input placeholder="Телефон" name="phone" type="text" class="validate inp_con">
        </div>
        <div class="input-field col l12 s12 m12">
          <textarea placeholder="Текст сообщения" class="materialize-textarea inp_con"></textarea>
        </div>
        <div class="col l12 s12 m12 con_1">
        <buttom type="submit" class="waves-effect waves-light btn btn5">ОТПРАВИТЬ</buttom>
        </div>
        </form>
    </div>
    </div>
    </div>
</section>
<section class="sec3">
    <div class="container">
    <div class="row">
    <div class="col l12 s12 m12 ots">
    <div class="col l5 m5 s5">
    <img src="assets/img/sam.png" class="img3">
    <p class="p25">От Аэропорта до остановки Комсомолец:</p>
    </div>
    <div class="col l2 s2 m2">
    <img src="assets/img/st.png" class="img4">
    </div>
    <div class="col l5 m5 s5">
    <img src="assets/img/avt.png" class="img3">
    <p class="p25">Маршрут № 131,135: ГЛК Роза Хутор - Аэропорт - Адлер.</p>
    </div>
    </div>
    <div class="col l12 s12 m12 ots">
    <div class="col l5 m5 s5">
    <img src="assets/img/poe.png" class="img3">
    <p class="p25">От железнодорожного вокзала Адлер до остановки Комсомолец: </p>
    </div>
    <div class="col l2 s2 m2">
    <img src="assets/img/st.png" class="img4">
    </div>
    <div class="col l5 m5 s5">
    <img src="assets/img/avt.png" class="img3">
    <p class="p25">Маршурт № 60,57,131,132 
Отправление ТПУ Адлер</p>
    </div>
    </div>
    <div class="col l12 s12 m12 ots">
    <div class="col l2 s12 m12">
    <div class="crd2">
    <p class="p26">Необходимо выйти на остановке Комсомолец, перейти на перекрестке (рядом с остановкой) на другую сторону ул. Ленина.</p>
    </div>
    </div>
    <div class="col l1 s12 m12 ccc">
    <img src="assets/img/st.png" class="img5">
    </div>
    <div class="col l2 s12 m12">
    <div class="crd2">
    <p class="p26">Далее прямо 500 метров до ул. Молокова. Увидите на углу банк ВТБ24, за ним повернуть направо во двор.</p>
    </div>
    </div>
    <div class="col l1 s12 m12 ccc">
    <img src="assets/img/st.png" class="img5">
    </div>
    <div class="col l2 s12 m12">
    <div class="crd2">
    <p class="p26">В центре двора 3 этажное белое здание, где на территории стоит копия башни Останкино.</p>
    </div>
    </div>
    <div class="col l1 s12 m12 ccc">
    <img src="assets/img/st.png" class="img5">
    </div>
    <div class="col l2 s12 m12">
    <div class="crd2">
    <p class="p26">На входе вывеска, сразу как зайдете, слева будет лестница на второй этаж, 19 ступенек и вы у нас!</p>
    </div>
    </div>
    </div>
    </div>
    </div>
</section>
@endsection