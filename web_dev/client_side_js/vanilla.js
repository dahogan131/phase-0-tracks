


var hide_platform = function(){
	var platform = document.getElementById("platform")
	platform.hidden = true
};
hide_platform();

var show_platform = function(){
	var platform = document.getElementById("platform")
	platform.hidden = false
};

var color_intro = function(){
	var color = document.getElementById("intro")
	color.style.backgroundColor = "#339933";
};

var color_header = function(){
	var color = document.getElementById("hello")
	color.style.backgroundColor = "#339933";
};

var color_platform = function(){
	var color = document.getElementById("platform")
	color.style.backgroundColor = "#339933";
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
var hover_color = document.getElementById("intro")
var hover_color2 = document.getElementById("hello")
var hover_color3 = document.getElementById("platform")

picture_button.addEventListener("click", show_picture);
platform_button.addEventListener("click", show_platform);
hover_color.addEventListener("mouseover", color_intro);
hover_color2.addEventListener("mouseover", color_header);
hover_color3.addEventListener("mouseover", color_platform);

