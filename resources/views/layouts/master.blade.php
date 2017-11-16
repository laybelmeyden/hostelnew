<!DOCTYPE html>
<html>

<head>
  <title>{{ $titl or 'HOSTEL WьISHKA' }}</title>
  <!--meta-->
  <meta charset="UTF-8">
  <meta name="description" content="{{ $meta or 'В хостеле Вышка вы будете чувствовать себя как дома, только лучше ;)' }}"/>
  <META NAME="keywords" CONTENT="{{ $keywords or 'HOSTEL WьISHKA' }}">
  <META NAME="AUTHOR" CONTENT="https://vk.com/glrlcocks">
  <meta name="revisit-after" content="5 days">
  <link rel="SHORTCUT ICON" href="assets/img/air_fav.png" type="image/x-icon">
    
  <!--соц сети-->
  <meta property="og:type" content="article" />
  <meta property="og:title" content="{{ $titl or 'HOSTEL WьISHKA' }}" />
  <meta property="og:description" content="{{ $meta or 'В хостеле Вышка вы будете чувствовать себя как дома, только лучше ;)' }}" />
  <meta property="og:image" href="storage/{{ $images or 'pages/logo.png' }}" content="storage/{{ $images or 'pages/logo.png' }}"  />
  <meta property="og:url" content="ccskm" />
  <meta property="og:site_name" content="HOSTEL WьISHKA" />

  <link type="text/css" rel="stylesheet" href="assets/materialize/css/materialize.min.css"  media="screen,projection"/>
  <link href="assets/dist/css/datepicker.min.css" rel="stylesheet" type="text/css">
  <link href="assets/dist/css/sass-compiled.css" rel="stylesheet" type="text/css">
  <link rel="stylesheet" href="assets/main.css">
  <link rel="stylesheet" href="assets/3329-style.css">


  <!--Let browser know website is optimized for mobile-->
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
</head>

<body>
@include('layouts.nav')
@yield('content')
@include('layouts.footer')
@include('layouts.scripts')

</body>
</html>
