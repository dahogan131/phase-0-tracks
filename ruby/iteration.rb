def status
	p "The block has not been run."
	block1 = "Charlie"
	block2 = "Oscar"
	yield(block1, block2)
end

status { |block1, block2| p "#{block1}, #{block2}, the block has been run."}

cities = ["Seattle", "SF", "LA", "Pheonix", "Denver"]

city_hash = {
	:origin =>
	:destination =>
	:population =>
	:elevation =>
	:climate =>
}