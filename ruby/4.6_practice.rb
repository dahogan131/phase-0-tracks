#able to get 2 methods to work with each other because ruby uses implicit return.
#return is implied
def return_method
	7
	#return 7
	#puts 7
end

a = return_method
p a

def return_method_2
	8
	#return 8 
	#puts 8
end

b = return_method_2
p b
p a + b

def make_array(arg1)
	array = arg1.chars
	return array
end 
make_array("lia")