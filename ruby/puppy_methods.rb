class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

end


# class Class
# 	def initialize
# 		p "Initializing class sequence..."
# 	end

# 	def method1
# 		p "This is method 1"
# 	end

# 	def method2
# 		p "This is method 2"
# 	end

# #method1
# end

# b = Class.new
# #Declare new hash
# #Hash needs keys for each of the methods: Initialize and 2 instance methods
# arr_init = Array.new
# arr_init = []

# arr_m1 = Array.new
# arr_m1 = []

# arr_m2 = Array.new
# arr_m2 = []
# index = 0
# until index == 50
# 	arr_init << initialize
# 	arr_m1 << b.method1
# 	arr_m2 << b.method2

# 	#Push the instance of the class into the hash
# 	#Somehow make it so that the methods go into their respective keys

# 	index = index + 1
# end

# # p arr_init
# # p arr_m1
# # p arr_m2

# data_hash = {
# 	:initial => arr_init,
# 	:method_1 => arr_m1,
# 	:method_2 => arr_m2
# }

# p data_hash


class Class
	b = Class.new

	arr_init = Array.new
	arr_init = []

	arr_m1 = Array.new
	arr_m1 = []

	arr_m2 = Array.new
	arr_m2 = []
	index = 0
	until index == 50
		def initialize
			p "Initializing class sequence..."
		end

		def method1
			p "This is method 1"
		end

		def method2
			p "This is method 2"
		end
		arr_init << initialize
		arr_m1 << b.method1
		arr_m2 << b.method2
		index = index + 1
	end
	data_hash = {
		:initial => arr_init,
		:method_1 => arr_m1,
		:method_2 => arr_m2
	}

	p data_hash
	data_hash.each {|k,v| puts "#{k} is #{v}"}
end

# b = Class.new

# arr_init = Array.new
# arr_init = []

# arr_m1 = Array.new
# arr_m1 = []

# arr_m2 = Array.new
# arr_m2 = []
# index = 0
# until index == 50
# 	arr_init << initialize
# 	arr_m1 << b.method1
# 	arr_m2 << b.method2



# 	index = index + 1
# end



# data_hash = {
# 	:initial => arr_init,
# 	:method_1 => arr_m1,
# 	:method_2 => arr_m2
# }

# p data_hash

