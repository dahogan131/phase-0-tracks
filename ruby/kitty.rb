class Kitty
end

arr = ["a", "r", "r"]

 Kitty.methods

felix = Kitty.new
oscar = Kitty.new
osiris = Kitty.new

p felix.class
p oscar == osiris
p osiris.instance_of?(Array)
p oscar.instance_of?(Kitty)
p arr.instance_of?(Array)

str = String.new
p str.length
p str.empty?
str += "huh."
p str
greeting = String.new("hello")
p greeting.length
p greeting.upcase

p String.methods
p greeting.upcase 
p str.methods



