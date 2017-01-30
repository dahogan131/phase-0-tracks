

def user_select
  user_input = ""
  while user_input != "done"
    p "Do you want to encrypt or decrypt your message?"
    p "Please enter |encrypt| or |decrypt| or |done|." 
    user_input = gets.chomp
      if user_input == "encrypt"
       p encrypt
      elsif user_input == "decrypt"
       p decrypt
      elsif user_input == "done"
        p "Thank you for using this."
        return 
      else 
        p "Sorry, does not compute!"
      end
  end
end

def encrypt
  p "Please insert a word to encrypt."
  name = gets.chomp
  encrypted_name = name.gsub(/./) do |letter|
    if letter == "z"
      letter = "a"
    else
      letter.next
    end
  end
end

def decrypt
    p "what is the encrypted message?"
  str = gets.chomp
  index = 0 
  str_back = ""
  while index < str.length
    str_back[index]
    if str[index] == "a"
      str_back[index] = "z"
    elsif str[index] == "b" 
      str_back[index] = "a"
    elsif str[index] == "c" 
      str_back[index] = "b" 
    elsif str[index] == "d" 
      str_back[index] = "c"
    elsif str[index] == "e" 
      str_back[index] = "d"
    elsif str[index] == "f" 
      str_back[index] = "e"
    elsif str[index] == "g" 
      str_back[index] = "f"
    elsif str[index] == "h" 
      str_back[index] = "g"
    elsif str[index] == "i" 
      str_back[index] = "h"
    elsif str[index] == "j" 
      str_back[index] = "i"
    elsif str[index] == "k" 
      str_back[index] = "j"
    elsif str[index] == "l" 
      str_back[index] = "k"
    elsif str[index] == "m" 
      str_back[index] = "l"
    elsif str[index] == "n" 
      str_back[index] = "m"
    elsif str[index] == "o" 
      str_back[index] = "n"
    elsif str[index] == "p" 
      str_back[index] = "o"
    elsif str[index] == "q" 
      str_back[index] = "p"
    elsif str[index] == "r" 
      str_back[index] = "q"
    elsif str[index] == "s" 
      str_back[index] = "r"
    elsif str[index] == "t" 
      str_back[index] = "s"
    elsif str[index] == "u" 
      str_back[index] = "t"
    elsif str[index] == "v" 
      str_back[index] = "u"
    elsif str[index] == "w" 
      str_back[index] = "v"
    elsif str[index] == "x" 
      str_back[index] = "w"
    elsif str[index] == "y" 
      str_back[index] = "x"
    elsif str[index] == "z" 
      str_back[index] = "y"
    else 
      str_back[index] = " "
    end
    index += 1 
  end
  str_back
end

user_select



# p "this program will encrypt and then decrypt a string. Please insert a word."
# name = gets.chomp
# encrypted_name = name.gsub(/./) do |word|
#   word.next
# end
# puts encrypted_name

# #str_back represents the decrypted message. 

# encrypted_message = encrypted_name
# index = 0 
# str = encrypted_message
# str_back = ""
# while index < str.length
#   p str_back[index]
#   if str[index] == "a"
#     str_back[index] = "z"
#   elsif str[index] == "b" 
#     str_back[index] = "a"
#   elsif str[index] == "c" 
#     str_back[index] = "b" 
#   elsif str[index] == "d" 
#     str_back[index] = "c"
#   elsif str[index] == "e" 
#     str_back[index] = "d"
#   elsif str[index] == "f" 
#     str_back[index] = "e"
#   elsif str[index] == "g" 
#     str_back[index] = "f"
#   elsif str[index] == "h" 
#     str_back[index] = "g"
#   elsif str[index] == "i" 
#     str_back[index] = "h"
#   elsif str[index] == "j" 
#     str_back[index] = "i"
#   elsif str[index] == "k" 
#     str_back[index] = "j"
#   elsif str[index] == "l" 
#     str_back[index] = "k"
#   elsif str[index] == "m" 
#     str_back[index] = "l"
#   elsif str[index] == "n" 
#     str_back[index] = "m"
#   elsif str[index] == "o" 
#     str_back[index] = "n"
#   elsif str[index] == "p" 
#     str_back[index] = "o"
#   elsif str[index] == "q" 
#     str_back[index] = "p"
#   elsif str[index] == "r" 
#     str_back[index] = "q"
#   elsif str[index] == "s" 
#     str_back[index] = "r"
#   elsif str[index] == "t" 
#     str_back[index] = "s"
#   elsif str[index] == "u" 
#     str_back[index] = "t"
#   elsif str[index] == "v" 
#     str_back[index] = "u"
#   elsif str[index] == "w" 
#     str_back[index] = "v"
#   elsif str[index] == "x" 
#     str_back[index] = "w"
#   elsif str[index] == "y" 
#     str_back[index] = "x"
#   elsif str[index] == "z" 
#     str_back[index] = "y"
#   else 
#     str_back[index] = " "
#   end
#   index += 1 
# end

# p str_back






# str_back(str("pit"))


