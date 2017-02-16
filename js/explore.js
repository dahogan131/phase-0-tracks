//Establish a function that accepts a string as a parameter.
//The function will be composed of a loop that runs until the index of the string parameter is equal to zero.
	//In the loop, the index of the string decreases by 1 each loop
	//In the loop there is a variable that represents an empty string.
		//Each loop cycle, the character of the string index is added to the empty string.
		//The empty string 

//=============This function will do it, but it's string length-specific. Want to incorporate the loop so that any word can be input

//function reverse(string) {
//return string[4] + string[3] + string[2] + string[1] + string[0];
//}
//console.log(reverse("camel"));

//========================This is the loop I would like to incorporate into my function========================================================

//var string = "string"
//for (var index = string.length -1; index > -1; index -=1) console.log(string[index])

// This function will take any string as an argument. Was able to integrate the while loop into the the function concept.
function reverse(string) {
  empty = "";
  for (var index = string.length -1; index > -1; index -=1) 
  empty += string[index];
  return empty
}
console.log(reverse("camel"));