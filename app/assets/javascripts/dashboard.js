$(document).ready(function(){
	$('input[type=text]').minicolors({
    theme: 'bootstrap',
    inline: 'true'
  });
});
function applyGridColor(){
	if($(".grid-selected").size()>0){
		color_code = $("#color_picker").val();
		palettes = []
    $(".grid-selected").each(function(){
    	$(this).css("background-color", color_code);
    	palettes.push({color_code: color_code, row: $(this).data('row'), column: $(this).data("col")})		  
		});
		$.ajax({
	    type: "POST",
	    url: "/dashboard/apply_color",
	    data: {palettes_attributes: palettes}
	  });
	}else{
		jQuery.gritter.add({title:'Notification',text:'You are not select the any Grid of Palette. Please select the atleast one grid.'});
	}
}

function refreshGrid(){
	if($(".grid-selected").size()==0){
		$.ajax({
      type: "get",
      url: "/dashboard/refresh_grid"
    });
	}
}
// referesh the grid in every 10 seconds
setInterval("refreshGrid()", 10000);