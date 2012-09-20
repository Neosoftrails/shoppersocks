$(document).ready(function() {

	$("#link1").click(function(event){
	    
	     alert("hfjhjg");
	  $("#replace").html("<%= escape_javascript(render :partial => 'cardysockspages/socks_color', :locals => {:link => '1'}) %>");

	    
	    
	  })
});
