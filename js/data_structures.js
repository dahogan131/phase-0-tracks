//Assign each horse in the array as a key,
//Assign each color in the array as a value.
	//First run conditional for if colors.length = horse.length
		//Establish empty object
		//For loop to go through each index of horse and color arrays.
			//In the for loop, push key and value into empty object. 
				//key = horse[i], value = 'colors'[i]




var colors = ["blue", "red", "orange", "purple"]
var horse = ["Rocky", "Fin", "Ed", "Martha"]

colors.push("green")
horse.push("Hass")
console.log(colors)
console.log(horse)

//Curly brackets = ruby end. 
//Curly brackets encompass that which is being done in the loop. 
var horseColors = {}
function horseObject() {
	if (colors.length == horse.length){
		for (var index = 0; index < colors.length; index +=1){
		horseColors[horse[index]] = colors[index] 
		}
	return horseColors
	}	
}
console.log(horseObject(horseColors))