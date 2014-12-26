$(document).ready(function(){
	$("a#dropdown-menu").click(function(e){
		e.preventDefault();
		$("ul.submenu").slideToggle("slow");
		console.log("dropdown menu is working");
	});
});

