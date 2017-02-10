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
	def initialize(gender, ethnicity, age = 0, reindeer = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Donner", "Blitzen"])
		@gender = gender
		@ethnicity = ethnicity
		@age = age
		@reindeer = reindeer
		p "Initializing Santa Sequence, #{@name}..."
	end
	def speak
		p "Ho Ho Ho! Happy Hannukah!"
	end
	def eat_milk_and_cookies(cookie)
		p "Oh man, friggin' loved that #{cookie}!"
		@cookie = cookie
	end
	
	def celebrate_birthday
		 @age = @age + 1
	end
	def get_mad_at(reindeer)
		#Method asks for reindeer
		#Inserts that reindeer at end of array (push or <<)
		#Delete reindeer at it's original location on index
		@reindeer
	end	
# Establishing Getter Method for Attribute
	def gender
	 	@gender
	end
#Establishing Setter Method
	def gender=(new_gender)
		@gender = new_gender
	end
end

santa = Santa.new("Female", "Laplander")
p santa
santa.gender= "Gender Neutral"
puts "#{santa.gender}"
p santa
p santa.celebrate_birthday

 # santas = []
 # santas << Santa.new("Male", "Dinka")
 # santas << Santa.new("Gender Fluid", "Romansh")
 # santas << Santa.new("Agender", "Inupiat")
 # santas << Santa.new("Bigender", "Korean")

 # p santas

# Santa sequence keeps recurring. Somehow need to make that not happen. 

# santas2 = []
# ex_gen = ["Male", "Gender Fluid", "Agender", "Bigender"]
# ex_eth = ["Dinka", "Romansh", "Inupiat", "Korean"]

# ex_gen.length.times do |i|
# 	p i
# 	santas2 << Santa.new(ex_gen[i], ex_eth[i])
# 	p santas2
# 	p "incomplete index"
# end

# p santas2


# santa = Santa.new("Male", "Dinka")
# santa.gender
# santa.eat_milk_and_cookies("gingersnap")
# santa.speak

# santa = Santa.new("Gender Fluid", "Romansh")
# santa.gender
# santa.eat_milk_and_cookies("sugar cookie")
# santa.speak

# santa = Santa.new("Agender", "Inupiat")
# santa.gender
# santa.eat_milk_and_cookies("snickerdoodle")
# santa.speak

# santa = Santa.new("Bigender", "Korean")
# santa.gender
# santa.eat_milk_and_cookies("goatmeal craisin (yuk)")
# santa.speak

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
