def alias_name(first_name, last_name)
  first_name = "lia".chars
  last_name = "hogan".chars
  p first_name.class
  p "first name: #{first_name}"
  index = 0
  while index < last_name.length 
    first_name[index + first_name.length] = last_name[index]
    # first_name[4] = last_name[1]
    # first_name[5] = last_name[2]
    # first_name[6] = last_name[3]
    # first_name[7] = last_name[4]
    index +=1 
  end
   first_name.compact
   p "compacted first name: #{first_name.compact}"
   p "last name: #{last_name}"
  index = 0
  while last_name.length < first_name.length 
    last_name[index + last_name.length] = first_name[index]
    # last_name[6] = first_name[1]
    # last_name[7] = first_name[2]
    # p last_name
    index +=1 
  end
    last_name.compact
    p "compacted last name: #{last_name.compact}"
    first_name.delete_at(0)
    first_name.delete_at(0)
    first_name.delete_at(0)
    p "compacted first name: #{first_name.compact}"
    last_name.delete_at(0)
    last_name.delete_at(0)
    last_name.delete_at(0)
    last_name.delete_at(0)
    last_name.delete_at(0)
    p "compacted last name: #{last_name.compact}"
  
  full_name = first_name.compact + last_name.compact
  index = 0 
  forward_letter = ""
  # comp_for_letter = forward_letter.compact
  while index < full_name.length
    forward_letter[index]
    if full_name[index] == "a"
      forward_letter[index] = "e"
    elsif full_name[index] == "b" 
      forward_letter[index] = "c"
    elsif full_name[index] == "c" 
      forward_letter[index] = "d" 
    elsif full_name[index] == "d" 
      forward_letter[index] = "f"
    elsif full_name[index] == "e" 
      forward_letter[index] = "i"
    elsif full_name[index] == "f" 
      forward_letter[index] = "g"
    elsif full_name[index] == "g" 
      forward_letter[index] = "h"
    elsif full_name[index] == "h" 
      forward_letter[index] = "j"
    elsif full_name[index] == "i" 
      forward_letter[index] = "o"
    elsif full_name[index] == "j" 
      forward_letter[index] = "k"
    elsif full_name[index] == "k" 
      forward_letter[index] = "l"
    elsif full_name[index] == "l" 
      forward_letter[index] = "m"
    elsif full_name[index] == "m" 
      forward_letter[index] = "n"
    elsif full_name[index] == "n" 
      forward_letter[index] = "p"
    elsif full_name[index] == "o" 
      forward_letter[index] = "u"
    elsif full_name[index] == "p" 
      forward_letter[index] = "q"
    elsif full_name[index] == "q" 
      forward_letter[index] = "r"
    elsif full_name[index] == "r" 
      forward_letter[index] = "s"
    elsif full_name[index] == "s" 
      forward_letter[index] = "t"
    elsif full_name[index] == "t" 
      forward_letter[index] = "v"
    elsif full_name[index] == "u" 
      forward_letter[index] = "y"
    elsif full_name[index] == "v" 
      forward_letter[index] = "w"
    elsif full_name[index] == "w" 
      forward_letter[index] = "x"
    elsif full_name[index] == "x" 
      forward_letter[index] = "z"
    elsif full_name[index] == "y" 
      forward_letter[index] = "a"
    elsif full_name[index] == "z" 
      forward_letter[index] = "b"
    else 
      forward_letter[index] = " "
    end
    index += 1 
  end
  p full_name.class
  forward_letter
end

puts alias_name("lia", "hogan")

#===========================================

#first name and last name are variables who switch values.
#method that puts variables into array form and then pushes the string values into each other. 
#can use if/else conditional to switch vowels and consonants. Thinking similar model as the week 4 encrypt model

# full_name = ["Lia", "Hogan"]
# first_name = full_name[0]
# last_name = full_name[1]


# swapped_first = ""
# swapped_last = ""
# swapped_last[0] = first_name[0]
# p swapped_last
#NOT QUITE
# index = 0
# while swapped_last.length < first_name.length
# 	swapped_last[index] = first_name[index]
# 	index +=1
# end
# puts swapped_last

fr_name = "Lia".chars
la_name = "Hogan".chars
p fr_name.class
fr_name[3] = la_name[0]
fr_name[4] = la_name[1]
fr_name[5] = la_name[2]
fr_name[6] = la_name[3]
fr_name[7] = la_name[4]
p fr_name

la_name[5] = fr_name[0]
la_name[6] = fr_name[1]
la_name[7] = fr_name[2]
p la_name
fr_name.delete_at(0)
fr_name.delete_at(0)
fr_name.delete_at(0)
p fr_name
la_name.delete_at(0)
la_name.delete_at(0)
la_name.delete_at(0)
la_name.delete_at(0)
la_name.delete_at(0)
p la_name

full_name = fr_name + la_name
p full_name
#Trying to put into method form.


def alias_name
  first_name = "lia".chars
last_name = "hogan".chars
p first_name.class
first_name[3] = last_name[0]
first_name[4] = last_name[1]
first_name[5] = last_name[2]
first_name[6] = last_name[3]
first_name[7] = last_name[4]
p first_name

last_name[5] = first_name[0]
last_name[6] = first_name[1]
last_name[7] = first_name[2]
p last_name
first_name.delete_at(0)
first_name.delete_at(0)
first_name.delete_at(0)
p first_name
last_name.delete_at(0)
last_name.delete_at(0)
last_name.delete_at(0)
last_name.delete_at(0)
last_name.delete_at(0)
p last_name
  
  full_name = first_name + last_name
  index = 0 
  str_back = ""
  while index < full_name.length
    str_back[index]
    if full_name[index] == "a"
      str_back[index] = "e"
    elsif full_name[index] == "b" 
      str_back[index] = "c"
    elsif full_name[index] == "c" 
      str_back[index] = "d" 
    elsif full_name[index] == "d" 
      str_back[index] = "f"
    elsif full_name[index] == "e" 
      str_back[index] = "i"
    elsif full_name[index] == "f" 
      str_back[index] = "g"
    elsif full_name[index] == "g" 
      str_back[index] = "h"
    elsif full_name[index] == "h" 
      str_back[index] = "j"
    elsif full_name[index] == "i" 
      str_back[index] = "o"
    elsif full_name[index] == "j" 
      str_back[index] = "k"
    elsif full_name[index] == "k" 
      str_back[index] = "l"
    elsif full_name[index] == "l" 
      str_back[index] = "m"
    elsif full_name[index] == "m" 
      str_back[index] = "n"
    elsif full_name[index] == "n" 
      str_back[index] = "p"
    elsif full_name[index] == "o" 
      str_back[index] = "u"
    elsif full_name[index] == "p" 
      str_back[index] = "q"
    elsif full_name[index] == "q" 
      str_back[index] = "r"
    elsif full_name[index] == "r" 
      str_back[index] = "s"
    elsif full_name[index] == "s" 
      str_back[index] = "t"
    elsif full_name[index] == "t" 
      str_back[index] = "v"
    elsif full_name[index] == "u" 
      str_back[index] = "y"
    elsif full_name[index] == "v" 
      str_back[index] = "w"
    elsif full_name[index] == "w" 
      str_back[index] = "x"
    elsif full_name[index] == "x" 
      str_back[index] = "z"
    elsif full_name[index] == "y" 
      str_back[index] = "a"
    elsif full_name[index] == "z" 
      str_back[index] = "b"
    else 
      str_back[index] = " "
    end
    index += 1 
  end
  str_back
end

puts alias_name

# p letters = "hello world".split('')
# p letters.class

# full_name = ["Lia", "Hogan"]
# first_name = full_name[0]
# last_name = full_name[1]
# p first_name.chars
# p last_name.chars
# index = 0
# first_name[3] = last_name[0]
# first_name[4] = last_name[1]
# first_name[5] = last_name[2]
# first_name[6] = last_name[3]
# first_name[7] = last_name[4]
# p first_name
# # until index = last_name.length
# #   last_name[index + last_name.length + 1] = first_name[index]
# #   index += 1
# # end
# last_name[5] = first_name[0]
# last_name[6] = first_name[1]
# last_name[7] = first_name[2]
# p last_name
# p first_name.class
# first_name.split('') #{|letter| letter.delete_at(2)}
# p first_name.class

# h = {
#   "z" => 50,
#   "a" => 100,
#   "b" => 200,
#   "c" => 300,
#   "d" => 400
# }
# puts h.delete_if {|key, value| key >= "b"}


# def rm_index
# 	array = [0, 2, 4, 6, 8]
# 	while array.length > 2
# 		p array.pop
# 	end
# end
# p rm_index

# no_cars = [2, 5, 12, 17, 20, 25]

# numbers_hash = {
# 	"no_gas" => no_cars[0],
# 	"no_hybrid" => no_cars[1],
# 	"no_plugin" => no_cars[2],
# 	"no_electric" => no_cars[3],
# 	"no_ethanol" => no_cars[4],
# 	"no_fuelcell" => no_cars[5]
# }

# puts numbers_hash.delete_if {|key| key <= "no_gas"}



# numbers_hash = {
# 	"no_gas" => 2,
# 	"no_hybrid" => 5,
# 	"no_plugin" => 12,
# 	"no_electric" => 17,
# 	"no_ethanol" => 20,
# 	"no_fuelcell" => 25
# }

# puts numbers_hash.select {|k,v| k > "no_gas"}

# puts numbers_hash.delete_if {|key| key < "no_hybrid"}




















