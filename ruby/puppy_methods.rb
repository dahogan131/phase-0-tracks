class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

end

# def speak(integer, bark)
# 	puts integer * bark
# end

# puts speak(7, "woof")
class Class
	def method
		p "okay b"
	end
# index = 0
# until index == 50
# 	p method
# 	index = index + 1
# end
method
end

b = Class.new
#Declare new hash
#Hash needs keys for each of the methods: Initialize and 2 instance methods
index = 0
until index == 50
	p b
	#Push the instance of the class into the hash
	#Somehow make it so that the methods go into their respective keys

	index = index + 1
end