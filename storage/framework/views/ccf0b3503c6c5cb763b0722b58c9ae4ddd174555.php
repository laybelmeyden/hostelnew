<!DOCTYPE html>
<html>

<head>
  <title><?php echo e(isset($titl) ? $titl : 'HOSTEL WьISHKA'); ?></title>
  <!--meta-->
  <meta charset="UTF-8">
  <meta name="description" content="<?php echo e(isset($meta) ? $meta : 'В хостеле Вышка вы будете чувствовать себя как дома, только лучше ;)'); ?>"/>
  <META NAME="keywords" CONTENT="<?php echo e(isset($keywords) ? $keywords : 'HOSTEL WьISHKA'); ?>">
  <META NAME="AUTHOR" CONTENT="https://vk.com/glrlcocks">
  <meta name="revisit-after" content="5 days">
  <link rel="SHORTCUT ICON" href="assets/img/air_fav.png" type="image/x-icon">
    
  <!--соц сети-->
  <meta property="og:type" content="article" />
  <meta property="og:title" content="<?php echo e(isset($titl) ? $titl : 'HOSTEL WьISHKA'); ?>" />
  <meta property="og:description" content="<?php echo e(isset($meta) ? $meta : 'В хостеле Вышка вы будете чувствовать себя как дома, только лучше ;)'); ?>" />
  <meta property="og:image" href="storage/<?php echo e(isset($images) ? $images : 'pages/logo.png'); ?>" content="storage/<?php echo e(isset($images) ? $images : 'pages/logo.png'); ?>"  />
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
<?php echo $__env->make('layouts.nav', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>
<?php echo $__env->yieldContent('content'); ?>
<?php echo $__env->make('layouts.footer', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>
<?php echo $__env->make('layouts.scripts', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>

</body>
</html>
