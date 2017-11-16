<?php $__env->startSection('content'); ?>


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
    <?php $__currentLoopData = $uslug; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $uslugs): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
    <div class="col l12 s12 m12 ots uslu">
    <div class="col l6 m12 s12 ots uslu1">
    <div class="usm">
    <img src="storage/<?php echo e($uslugs->img); ?>" class="usi"></img>
    </div>
    <div class="usm2">
    <img src="assets/img/pr.png" class="usi1"></img>
    </div>
    </div>
    <div class="col l6 m12 s12 ots">
    <p class="p29"><?php echo e($uslugs->title); ?></p>
    <p class="p30"><?php echo e($uslugs->body); ?></p>
    </div>
    </div>
    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
    <!--wjytw wbrkf-->
    </div>
    </div>    
</section>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('layouts.master', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>