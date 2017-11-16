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

$(function(){
  $('.minimized').click(function(event) {
    var i_path = $(this).attr('src');
    $('body').append('<div id="overlay"></div><div id="magnify"><img src="'+i_path+'"><div id="close-popup"><i></i></div></div>');
    $('#magnify').css({
	    left: ($(document).width() - $('#magnify').outerWidth())/2,
	    // top: ($(document).height() - $('#magnify').outerHeight())/2 upd: 24.10.2016
            top: ($(window).height() - $('#magnify').outerHeight())/2
	  });
    $('#overlay, #magnify').fadeIn('fast');
  });
  
  $('body').on('click', '#close-popup, #overlay', function(event) {
    event.preventDefault();
 
    $('#overlay, #magnify').fadeOut('fast', function() {
      $('#close-popup, #magnify, #overlay').remove();
    });
  });
});
$(document).ready(function() {
		$('.pgwSlider').pgwSlider({
			autoSlide: true,
			displayControls: true
		});
	});

$(".button-collapse").sideNav();


