
var hide_platform = function(){
	var platform = document.getElementById("platform")
	platform.hidden = true
};
hide_platform();

var show_platform = function(){
	var platform = document.getElementById("platform")
	platform.hidden = false
};

// var platform_button = getElementById("platform-button");
// platform_button.addEventListener("click", show_platform);



var hide_picture = function(){
	var picture = document.getElementById("foot-photo")
	picture.hidden = true
};
hide_picture();

var show_picture = function(){
	var picture = document.getElementById("foot-photo")
	picture.hidden = false
};


var platform_button = document.getElementById("platform-button");
var picture_button = document.getElementById("foot-button");

picture_button.addEventListener("click", show_picture);
platform_button.addEventListener("click", show_platform);

