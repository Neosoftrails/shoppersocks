$(document).ready(function() {
	    $("#link3b").show();
	    $("#link2b").hide();
        $("#link4b").hide(); 
        $("#link1b").hide();
        $("#height").hide();
        $("#color").hide(); 
        $("#small1").hide(); 
        $("#small2").hide();    
        $("#small3").hide();   
        $("#small4").hide();    
   

		$("#link1").click(function(event){
					$("#height").show();


							    
						        $("#link1b").show();
						        $("#link2b").hide();
						        $("#link3b").hide();
					            $("#link4b").hide(); 
					           $("#small1").hide();
						         $("#small2").hide();
						        $("#small3").hide();
					            $("#small4").hide();
					            })          
			           

		$("#link2").click(function(event){
			     $("#height").show();
              
		              
						        $("#link2b").show();
						        $("#link1b").hide();
						        $("#link3b").hide();
					            $("#link4b").hide(); 
					            $("#small1").hide();
						        $("#small2").hide();
						        $("#small3").hide();
					            $("#small4").hide();
					           
					        

            })


		$("#link3").click(function(event){
						     $("#height").show();
              
		              
						        $("#link3b").show();
						        $("#link1b").hide();
						        $("#link2b").hide();
					            $("#link4b").hide(); 
					            $("#small1").hide();
						        $("#small2").hide();
						        $("#small3").hide();
					            $("#small4").hide();
					           
					                   
	           })
		$("#link4").click(function(event){
							      $("#height").show();
              
		              
							    
						        $("#link4b").show();
						        $("#link1b").hide();
						        $("#link2b").hide();
					            $("#link3b").hide(); 
					            $("#small1").hide();
						        $("#small2").hide();
						        $("#small3").hide();
					            $("#small4").hide();
					                 
	           })


		$("#size2").click(function(){
    $(this).data('clicked', true);
});



if($('#size2').data('clicked')) {
    alert('yes');
}
});




$("#size2").click(function(){
    $(this).data('clicked', true);
});



if($('#size2').data('clicked')) {
    alert('yes');
}



