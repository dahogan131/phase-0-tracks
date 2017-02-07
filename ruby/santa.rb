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
	def speak
		p "Ho Ho Ho! Happy Hannukah!"
	end
	# p speak
	def eat_milk_and_cookies(cookie)
		p "Oh man, friggin' loved that #{cookie}!"
	end
	# p eat_milk_and_cookies("gingersnap")
	def initializing
		p "Initializing Santa sequence... "
	end
	# p initialize
end
a = Santa.new
a.eat_milk_and_cookies("cookie")
a.initializing
a.speak
# a.speak
# a.initialize
