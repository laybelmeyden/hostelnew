<?php $__env->startSection('content'); ?>


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
    <?php $__currentLoopData = $rev; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $revs): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
    <div class="col l12 s12 m12">
    <div class="card crd1">
    <div class="card-content crd_n1">
	       <div class="v1">
	       <img src="assets/img/b1.png"></img>
	       </div>
	       <div class="v2">
	       <p class="p8"><?php echo e($revs->title); ?></p>
	       <div class="chert1"></div>
	       <p class="p9"><?php echo e($revs->body); ?></p>
	       </div>
	</div>
    </div>
    </div>
    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
    <!--цикл-->
    </div>
    </div>
</section>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('layouts.master', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>