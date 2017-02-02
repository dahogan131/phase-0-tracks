#Method takes integer and returns array.
#Each succeeding index to be the sum of the two preceding indeces. 
#Print out sequence of Fibonacci terms in array form. 
#array[index] = array[index -1] + array[index -2]


def fib(integer)
	arr = [0, 1]
	index = 2
	while index < integer
		arr[index] = arr[index - 1] + arr[index - 2]
		index +=1
	end
	return arr
end
fib_array = fib(100)
puts fib_array

if fib_array[99] == 218922995834555169026
	p "Verified!"
else
	p "Try again, Oscar."
end

#2 arrays: sorted array and to be sorted array. 
#define method that passes to be sorted array, starting by passing first integer to index zero. 

unsorted_array = [3, 1, 5, 2, 4]
def sort(unsorted_array)
	sorted_array = []
	sorted_array << unsorted_array[0]

end