<!DOCTYPE html>
<html>

<head>
  <title>{{ $titl or 'АИР' }}</title>
  <!--meta-->
  <meta charset="UTF-8">
  <meta name="description" content="{{ $meta or 'Агенство Инновационного Развития' }}"/>
  <META NAME="keywords" CONTENT="{{ $keywords or 'AIR' }}">
  <META NAME="AUTHOR" CONTENT="https://vk.com/glrlcocks">
  <meta name="revisit-after" content="5 days">
  <link rel="SHORTCUT ICON" href="assets/img/air_fav.png" type="image/x-icon">
    
  <!--соц сети-->
  <meta property="og:type" content="article" />
  <meta property="og:title" content="{{ $titl or 'АИР' }}" />
  <meta property="og:description" content="{{ $meta or 'Агенство Инновационного Развития' }}" />
  <meta property="og:image" href="storage/{{ $img or 'pages/Logo.png' }}" content="storage/{{ $img or 'pages/Logo.png' }}"  />
  <meta property="og:url" content="ccskm" />
  <meta property="og:site_name" content="AIR" />

  <link type="text/css" rel="stylesheet" href="assets/materialize/css/materialize.min.css"  media="screen,projection"/>
  <link href="assets/dist/css/datepicker.min.css" rel="stylesheet" type="text/css">
<link href="assets/dist/css/sass-compiled.css" rel="stylesheet" type="text/css">
  <link rel="stylesheet" href="assets/main.css">


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
