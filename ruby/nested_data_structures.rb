enchanted_forest = {
	keebler: {
		village: 'Keebler Treehouse', 
		inhabitants: ['Tuck', 'Elmer', 'Zack'],
		population: {
			1980 => 5,
			1990 => 25,
			2000 => 125,
			2010 => 625
		 }
		},
	smurf: {
		village: 'Smurf Village', 
		inhabitants:  ['Papa Smurf', 'Smurfette', 'Brainy Smurf'],
		population: {
			1980 => 2,
			1990 => 200,
			2000 => 1500,
			2010 => 600
		},
	troll: {	
		village: 'Troll House', 
		inhabitants:  ['Big Troll', 'Happy Troll', 'Garden Troll', 'Internet Troll']
		population: {
			1980 => 1200,
			1990 => 2500,
			2000 => 500,
			2010 => 700
		}
}

p enchanted_forest[:keebler][:inhabitants][0]
p enchanted_forest[:smurf][:village]
p enchanted_forest[:troll][:inhabitants][2]
p enchanted_forest[:keebler][:population][1980]
