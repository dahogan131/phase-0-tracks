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
grocery_list = create_a_list("carrots apples cereal pizza")
p grocery_list


