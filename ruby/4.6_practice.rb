#able to get 2 methods to work with each other by using return values.
def return_method
	return 7
end

a = return_method

def return_method_2
	return 8 
end

b = return_method_2

p a + b