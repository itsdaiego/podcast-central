$(document).ready(function(){
	$("#dropdown-menu").click(function(e){
		e.preventDefault();
		$("ul.submenu").slideToggle("slow");
		console.log("menu dropdown is working");
	});
});