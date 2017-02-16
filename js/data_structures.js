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

function Car(make, model, mpg) {
	console.log("This is our new car...")
	this.make = make;
	this.model = model;
	this.mpg = mpg;	

	this.engine = function() {console.log("Vroom!") }; 

	console.log("CAR INITIALIZATION COMPLETE");	
}

console.log("Let's buy a car ...");
var anotherCar = new Car("Hyundai", "Azera", 28);
console.log(anotherCar)
console.log("Our car can rev!")
anotherCar.engine()

console.log("Let's buy a car ...");
var carTwo = new Car("Ford", "Focus Electric", "NA");
console.log(carTwo)
console.log("Our car can rev!")
carTwo.engine()

console.log("Let's buy a car ...");
var carThree = new Car("Smart", "ForTwo", "40");
console.log(carThree)
console.log("Our car can rev!")
carThree.engine()

// Release 3:

//1. If you wanted to loop through the keys and values of an object, how would you do that? (There are a few ways to accomplish this, and some gotchas that can happen depending on your approach.)

// I found the following code on StackOverflow that loops through keys and values in an object:

// var p = {
//     "p1": "value1",
//     "p2": "value2",
//     "p3": "value3"
// };

// for (var key in p) {
//   if (p.hasOwnProperty(key)) {
//     console.log(key + " -> " + p[key]);
//   }
// }

//I can remove the key or value (p[key]) from console log if I want to loop through only value or key, respectively.
//This loop seems to run independently of the value of the index. The index is not mentioned here. 
	//This loop is dependent on the in operator relating to the key and value. 
		// The in operator tells us whether an object (in this case, a key) has a property name. 
		// This loop operates as long as the key has a value. 
// This code also has a conditional, depending on the hasOwnProperty operator. 
	//hasOwnProperty checks to make sure the value belongs to the specified key.
//console.log is inside the loop to print each key and value pair in the object.

//2. Are there advantages to using constructor functions to create objects? Disadvantages? 
//One serious advantage is you can simply input arguements into the functions and it will run. One can even loop through data structures and use constructor methods to run for hundreds of pieces of data. This would produce DRY code.
//A big disadvantage