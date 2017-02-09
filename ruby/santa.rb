# class Santa
# 	def speak
# 		p "Ho Ho Ho! Happy Hannukah!"
# 	end
# 	# p speak
# 	def eat_milk_and_cookies(cookie)
# 		p "Oh man, friggin' loved that #{cookie}!"
# 	end
# 	# p eat_milk_and_cookies("gingersnap")
# 	def initialize
# 		p "Initializing Santa sequence... "
# 	end
# 	# p initialize
# end



# p speak 
# p eat_milk_and_cookies("gingersnap")
# p initialize
# Santa = Class.new do
class Santa

	def initialize(name)
		@name = name
		p "Initializing Santa Sequence, #{@name}..."
	end
	def gender(gender)
		@gender = gender
		p "#{@name} is #{@gender}."
	end
	def speak
		p "Ho Ho Ho! Happy Hannukah #{@name}!"
	end
	# p speak
	def eat_milk_and_cookies(cookie)
		p "Oh man, friggin' loved that #{cookie}!"
		@cookie = cookie
	end
	# p eat_milk_and_cookies("gingersnap")
	# def initializing
	# 	p "Initializing Santa sequence... "
	# end
	# p initialize

end

santa = Santa.new("Kremit")
santa.gender("Male")
santa.eat_milk_and_cookies("gingersnap")
santa.speak

santa = Santa.new("Lia")
santa.gender("Gender Fluid")
santa.eat_milk_and_cookies("sugar cookie")
santa.speak

santa = Santa.new("Wu Tang")
santa.gender("Agender")
santa.eat_milk_and_cookies("snickerdoodle")
santa.speak

santa = Santa.new("Boo Thang")
santa.gender("Bigender")
santa.eat_milk_and_cookies("goatmeal craisin (yuk)")
santa.speak

# a.speak
# a.initialize


# def speak(integer, bark)
# 	puts integer * bark
# end

# puts speak(7, "woof")
# class Class
# 	def method
# 		p "okay b"
# 	end
# # index = 0
# # until index == 50
# # 	p method
# # 	index = index + 1
# # end
# method
# end

# b = Class.new
# #Declare new hash
# #Hash needs keys for each of the methods: Initialize and 2 instance methods
# index = 0
# until index == 50
# 	p b
# 	#Push the instance of the class into the hash
# 	#Somehow make it so that the methods go into their respective keys

# 	index = index + 1
# end
