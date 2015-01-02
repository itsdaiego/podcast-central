$(document).ready(function(){
	//Desktop Version
	$("a#dropdown-menu").click(function(e){
		e.preventDefault();
		$("ul.submenu").slideToggle("slow");
		console.log("dropdown menu is working");
	});
	//Mobile version
	$("ul.menu-icon").click(function(e){
		e.preventDefault();
		$("ul.menu-right").toggle();
		console.log("dropdown menu for mobile devices is working");
	});
});

