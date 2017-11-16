<?php $__env->startSection('content'); ?>
    <section class="sec3">
        <div class="container">
        <div class="row">
        <div class="col l12 s12 m12 center">
        <p class="p15">Фотографии</p>
        </div>
        </div>
        </div>
    </section>
    <section class="sec3">
    <div class="container">
    <div class="row">
    <div class="col l12 s12 m12">
      <ul class="tabs">
        <li class="col l3"></li>
        <li class="tab col l2 s2 m2"><a class="active t1" href="#hostel">ХОСТЕЛ</a></li>
        <li class="tab col l2 s2 m2"><a class="t1" href="#nomera">НОМЕРА</a></li>
        <li class="tab col l2 s2 m2"><a class="t1" href="#sanuzel">САНУЗЕЛ</a></li>
        <li class="col l3"></li>
      </ul>
    </div>
    <?php $__currentLoopData = $galler; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $gallers): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
    <div id="<?php echo e($gallers -> kil); ?>" class="col s12">
      <?php $__currentLoopData = json_decode($gallers->images, true); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $image): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
          <div class="col l4 m4 s4">
          <div class="image__wrapper">
          <img src="<?php echo e(URL::to('/storage/'.$image)); ?>" class="responsive-img minimized">
          </div>
          </div>
      <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
    </div>
    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
    </div>
    </div>
    </section>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('layouts.master', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>