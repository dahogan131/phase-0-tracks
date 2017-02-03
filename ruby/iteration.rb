def status
	p "The block has not been run."
	block1 = "Charlie"
	block2 = "Oscar"
	yield(block1, block2)
end

status { |block1, block2| p "#{block1}, #{block2}, the block has been run."}

cities = ["Seattle", "SF", "LA", "Pheonix", "Denver"]

city_hash = {
	:origin => cities[0],
	:destination => cities[4],
	:best_city => cities[1],
	:worst_city => cities[2],
	:hottest_city => cities[3]
}

p city_hash[:origin]
p city_hash[:destination]
p city_hash[:best_city]
p city_hash[:worst_city]
p city_hash[:hottest_city]

cities.each {|x| p "Welcome to #{x}"}
city_hash.each {|x| p "Thank you for visiting #{x}"}
puts cities.map! {|x| x + " Municipality"}

 numbers = [2, 5, 12, 17]
 puts numbers.delete_if {|num| num > 6}

 energy_type = {
 	'home electric' => 'solar',
 	'hot tub' => 'geothermal',
 	'shower' => 'natural gas',
 	'car' => 'petrol',
 	'barn heating' => 'coal'
 }
 puts energy_type.delete_if {|k,v| v =~ (/coal/)}

# numbers_hash = {
# 	:no_gas => numbers[0],
# 	:no_hybrid => numbers[1],
# 	:no_plugin => numbers[2],
# 	:no_electric => numbers[3]
# }
# puts numbers_hash.delete_if {|num| num > 6}

colors = ["blue", "purple", "green", "yellow", "red"]
puts colors.keep_if {|c| c =~ /[bl]/ }

 col = {
 	"sky" => "blue",
 	"barney" => "purple",
 	"grass" => "green",
 	"sun" => "yellow",
 	"stoplight" => "red"
 }
puts col.keep_if {|k,v| v =~ /[r]/}

# col = {
# 	"sky" => colors[0],
# 	"barney" => colors[1],
# 	"grass" => colors[2],
# 	"sun" => colors[3],
# 	"stoplight" => colors[4]
# }
# #it gives me funny business because it's analyzing the properties of the key, not the value. Need to get it to focus on the value of the key.
# puts col.keep_if {|k,v| v =~ /[red]/}

numbers = [2, 5, 12, 17]
puts numbers.select {|num| num.even?}

age = {
	'Oscar' => 45,
	'Charlie' => 32,
	'Lia' => 25,
	'Diana' => 28,
	'Harley' => 38
}
puts age.select {|k,v| v.even?}

array = [0, 2, 4, 6, 8]
p array.length

# Method that removes items from array until array only has 2 items in index.
#thinking while statement
def rm_index
	array = [0, 2, 4, 6, 8]
	while array.length > 2
		puts array.pop
	end
end
puts rm_index
