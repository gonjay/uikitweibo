var timoutid;
$(document).ready(function(){
$("#cmmf1 li").each(function(index){

		$(this).mouseover(function(){	
			var liNode = $(this);
			timoutid = setTimeout(function(){
			
				$("div.contentin").removeClass("contentin");
				
				$("#cmmf1 li.tabin").removeClass("tabin");
				
				$("div.cmmf1div:eq(" + index + ")").addClass("contentin");
				liNode.addClass("tabin");	
			},300);			
		}).mouseout(function(){
			clearTimeout(timoutid);	
		});
	});
	

});