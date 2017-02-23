//Function that takes an array of words/phrases. 

//Function needs to return the longest word/phrase in the array. 
	//We want the function to loop through the array. 
		//Establish an empty array where we push the element with the greater number of characters.
		//In looping through the array, it compares the character length of the element being looped and the element in the longest word array. 
			//In each loop, run an if/else.
				//If element being looped is greater in length than element in array to be returned, the word is pushed in and the old word pushed out. 


//This function accepts an array as an argument. 
//It returns a string that the array elements have been pushed into. 
//Need to put in an if/else conditional that splices out and replaces words in the empty string with words from the index that are longer. 
// function thearray(arr) {
//   var empty = '';
//   for (var i = 0; i < arr.length; i++)
//     empty += arr[i] + " ";
//     return empty;
// }
// console.log(thearray(["Hello","World"]))


//So far, it pushes out the previous element without regard to character length. 
function array2(arr) {
  var empty = [];
  for (var i = 0; i < arr.length; i++)
    if (arr[i].length > empty.length){
    //Replacing words[0] with words[1]
    eval(empty.splice(0,1,arr[i]));
   eval(empty);
  }else{
  	empty = arr[i]
  }
    return empty;
}
console.log(array2(["Welcome","World"]));
