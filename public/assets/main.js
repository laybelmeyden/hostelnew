$(document).ready(function(){
                    
(function () {
		var $frame = $('#basic2');
		var $wrap  = $frame.parent();

		// Call Sly on frame

		$frame.sly({
			horizontal: 1,
			itemNav: 'centered',
			smart: 1,
			activateOn: 'null',
			mouseDragging: 1,
			touchDragging: 1,
			releaseSwing: 1,
			startAt: 0,
			scrollBar: $wrap.find('.scrollbar'),
			scrollBy: 0,
			speed: 300,
			elasticBounds: 1,
			easing: 'easeOutExpo',
			dragHandle: 1,
			dynamicHandle: 1,
			clickBar: 1,
			scrollSource: 0,

			// Buttons
			prev: $wrap.find('.prev'),
			next: $wrap.find('.next'),
			
		});

	}());


                
  });


 
$(document).ready(function(){
$('.carousel').carousel();
});
    
    $(document).ready(function() {
  $('.slider').slider({
    fullWidth: true,
    indicators: false,
    interval: 12000
  });
  $('.next').click(function() {
    $('.slider').slider('next');
  });
  $('.prev').click(function() {
     $('.slider').slider('prev');
  });

});
$(function() {
	$('#carousel').carouFredSel({
		items: 1,
		auto: true,
		prev: '#prev1',
		next: '#next1',
					
	});
});