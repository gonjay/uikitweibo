$(document).ready(function() {
	$("#send").click(function(){
		$(this).addClass("input-send");
		$(this).attr('rows', 4);
		$("#send-button").removeClass("send-button-hide");
	});
	$("#send").blur(function(){
		$(this).removeClass("input-send");		
		$(this).attr('rows', 1);
		$("#send-button").addClass("send-button-hide");
	});
});