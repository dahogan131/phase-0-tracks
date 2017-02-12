# module Shout
#   # we'll put some methods here soon, but this code is fine for now!
#   def self.yell_angrily(words)
#   	words + "!!!" + " :("
#   end

#   def self.yelling_happily(words)
#   	words + "!!!" + " :DDDDD"
#   end
# end
 
# p Shout.yell_angrily("GET OFF MY LAWN")
# p Shout.yelling_happily("WELCOME TO THE PARTY!")


#1: Create mixin version of shout module
#2: Write 2 classes representing anything that might shout and include shout module
#3: Test work by adding driver code

module Shout
  def yell_angrily(words)
  	puts "#{words}" + "!!!" + " :("
  end

  def yelling_happily(words)
  	puts "#{words}" + "!!!" + " :DDDDD"
  end
end

class Grandpa
	include Shout 
end

class DevFriend
	include Shout
end

grandpa = Grandpa.new
grandpa.yell_angrily("GET OFF MY LAWN")
grandpa.yelling_happily("I DONE MADE 'N GUNPOWDER STEW FER SUPPER")

devfriend = DevFriend.new
devfriend.yelling_happily("WELCOME TO THE PARTY")
devfriend.yell_angrily("BRUH, YOU SCREWED UP THE ENTIRE CODE")


# #This module is a mixin. We do not use the self keyboard here.
# module Flight
# 	def take_off(altitude)
# 		puts "Taking off and ascending until reaching #{altitude}..."
# 	end
# end

# class Bird
# 	include Flight
# end 

# class Plane
# 	include Flight
# end

# bird = Bird.new
# bird.take_off(800)

# plane = Plane.new
# plane.take_off(30000)