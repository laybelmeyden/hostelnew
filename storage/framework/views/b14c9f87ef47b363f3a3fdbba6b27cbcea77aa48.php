<?php $__env->startSection('content'); ?>
<section class="sec3">
    <div class="container">
    <div class="row">
    <div class="col l12 s12 m12">
    <ul class="pgwSlider">
    <?php $__currentLoopData = json_decode($solo->images, true); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $image): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
    <li><img src="<?php echo e(URL::to('/storage/'.$image)); ?>"></li>
    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
    </ul>
    </div>
    <div class="col l12 s12 m12 center">
    <p class="p35"><?php echo e($solo->title); ?></p>
    </div>
    <div class="col l4 s12 m12 center"></div>
    <div class="col l4 s12 m12 center">
    <a href="/bronirovanie" class="waves-effect waves-light btn btn2 btn6 uu4">ЗАБРОНИРОВАТЬ</a>
    </div>
    <div class="col l4 s12 m12 center"></div>
    <div class="col l12 s12 m12">
    <?php echo $solo->body; ?>

    </div>
    </div>
    </div>
</section>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('layouts.master', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>