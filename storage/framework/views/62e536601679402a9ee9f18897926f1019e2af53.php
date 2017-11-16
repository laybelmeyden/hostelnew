<?php $__env->startSection('content'); ?>
<section class="sec3">
	
 <!--OtelMS -->
<script>
    var is_safari = navigator.userAgent.indexOf("Safari") > -1; // safari detection
    if (is_safari) {
    }
</script>

<script type="text/javascript">// <![CDATA[
	var myEventMethod = window.addEventListener ? "addEventListener" : "attachEvent"; 
	var myEventListener = window[myEventMethod]; 
	var myEventMessage = myEventMethod == "attachEvent" ? "onmessage" : "message"; 
	myEventListener(myEventMessage, function(e) { 
		if (e.data === parseInt(e.data)) 
			{ document.getElementById("my-iframe-id").height = e.data + "px"; console.log(e.data); 
		} 
		}, false); 
	function getParameterByName(name) { 
		name = name.replace(/[\[]/, "\[").replace(/[\]]/, "\]"); 
		var regex = new RegExp("[\?"+"\u0026"+"]" + name + "=([^"+"\u0026"+"#]*)"), 
		results = regex.exec(location.search); 
		return results === null ? "" : decodeURIComponent(results[1].replace(/\+/g, " ")); 
	} 
	// ]]>
	document.addEventListener("DOMContentLoaded", function(event) {
   	var url;
    if (document.body.clientWidth > 767) {
		url = "//12345-book.otelms.com/bookit/step1/?inline=true" + "\u0026" 
		+  "datein=" + getParameterByName("datein") + "\u0026" 
		+ "dateout=" + getParameterByName("dateout") + "\u0026" 
		+ "lang=" + getParameterByName("lang");
		}
	else {
		url = "//12345-book-m.otelms.com/bookit/step1/?inline=true" + "\u0026" 
		+ "datein=" + getParameterByName("datein") + "\u0026" 
		+ "dateout=" + getParameterByName("dateout") + "\u0026" 
		+ "lang=" + getParameterByName("lang");
		};
    document.getElementById("my-iframe-id").src = url;
		});
	// ]]>
</script>
<div class="bron">
	<iframe id="my-iframe-id" src="" style="border: 0;" width="100%" height="auto" scrolling="no"></iframe>
</div>
 <!--end of OtelMS -->
</section>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('layouts.master', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>