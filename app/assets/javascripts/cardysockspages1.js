
		


function showme(divname)
{
	

	$("#link1").click(function(){
      var newsrc = $j("#blacks").attr('alt');
    var $this = $(this);
    $(this).data('clicked', true);

    if($this.data('clicked')) {
       alert('yes');
    }

});
}
