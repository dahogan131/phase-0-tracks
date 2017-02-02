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
