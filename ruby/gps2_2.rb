# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # Converted string of items into separate indeces in an array. 
  # set default quantity
  # print the list to the console [can you use one of your other methods here?]
# output: Hash containing a key and value pair. 

# Method to add an item to a list
# input: list, item name, and optional quantity
# steps: insert new item name and quantity into the hash. 
# output: new updated hash

# Method to remove an item from the list
# input:
# steps:
# output:

# Method to update the quantity of an item
# input:
# steps:
# output:

# Method to print a list and make it look pretty
# input:
# steps:
# output:

my_hash = {:a => 1, :b => 2}
my_hash.delete(:a)
p my_hash
def delete_item(items)
	items = items.split(" ")
	item_hash = Hash.new
	items.each do |item|
		item_hash[item] = 0
		p item_hash
	end
	p "what is it you would like to get off your list?"
	item_hash.delete(gets.chomp)
	return item_hash
end

def quantity(items)
	items = items.split(" ")
	item_hash = Hash.new
	items.each do |item|
		p "insert quantity"
		item_hash[item] = gets.to_i
	end	
	return item_hash
end


def create_a_list(items)
	items = items.split(" ")
	item_hash = Hash.new
	items.each do |item|
		item_hash[item] = 1
	end
#Return allows us to call it without calling it in driver code. 
	return item_hash
end



#DRIVER CODE ======================================================
delete_item = delete_item("carrots apples cereal pizza")
p delete_item

quantity = quantity("carrots apples cereal pizza")
p quantity

grocery_list = create_a_list("carrots apples cereal pizza")
p grocery_list


