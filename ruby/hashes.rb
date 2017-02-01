# The value of the keys will be a variable that has a gets.chomp value. 
# The answer variable to each question will be gets.chomp and that answer variable will be the value for the key in the hash.
#For wallpaper and Ombre opinions, we are gonna want to use arrays. 
#Needs to be able to loop. Thinking an if statement with another option for gets.chomp. 

p "Hello! Thank you for using Bigfoot's Interior Decoration. We will need some infromation from your client's application."
p "Please enter your client's name."
client_name = gets.chomp
p "Is #{client_name} correct? yes or no?"
user_input = gets.chomp
  if user_input == "no"
  	p "Please enter your client's name."
  	client_name = gets.chomp
  end
p "Please enter your client's address."
client_address = gets.chomp
p "Is #{client_address} correct? yes or no."
user_input = gets.chomp
  if user_input == "no" 
  	p "Please enter your client's address."
  	client_address = gets.chomp
  end
p "Please enter your client's email."
client_email = gets.chomp
p "Is #{client_email} correct? yes or no."
  user_input = gets.chomp
  if user_input == "no"
  	p "Please enter your client's email."
  	client_email = gets.chomp
  end
p "Please enter your client's phone number."
client_number = gets.chomp
p "Is #{client_number} correct? yes or no."
  user_input = gets.chomp
  if user_input == "no"
  	p "Please enter your client's phone number."
  	client_number = gets.chomp
  end
p "What is your client's listed favorite shade of blue?"
client_blue = gets.chomp
p "Is #{client_blue} correct? yes or no."
  user_input = gets.chomp
  if user_input == "no"
  	p "What is your client's listed favorite shade of blue?"
  	client_blue = gets.chomp
  end
p "List client wallpaper preference. Enter the number place of the pattern on the list (Paisley = 1, Chevrons = 2, etc)"
client_paper = ["Paisley ", "Chevrons ", "Photorealistic Woodsy Scenes With Squirrels ", "Photorealistic Woodsy Scenes WithOUT Squirrels ", "Abstract Woodsy Scenes "]
index = gets.to_i - 1
client_selection = client_paper[index]
p "Is #{client_selection} correct? yes or no."
  user_input = gets.chomp
  if user_input == "no"
  	p "List client wallpaper preference. Enter the number place of the pattern on the list (Paisley = 1, Chevrons = 2, etc)"
  	index = gets.to_i - 1
    client_selection = client_paper[index]
  end
p "Did your client have more than one wallpaper preference? yes or no."
  user_input = gets.chomp
  if user_input == "yes"
  	p "Please enter your client's other wallpaper prefernce. Enter the number place of of the pattern on the list (Paisley = 1, Chevrons = 2, etc)"
    client_paper2 = ["Paisley ", "Chevrons ", "Photorealistic Woodsy Scenes With Squirrels ", "Photorealistic Woodsy Scenes WithOUT Squirrels ", "Abstract Woodsy Scenes "]
	index = gets.to_i - 1
	client_selection2 = client_paper2[index]
	p "Is #{client_selection2} correct? yes or no."
	  user_input = gets.chomp
	  if user_input == "no"
	  	p "List client wallpaper preference. Enter the number place of the pattern on the list (Paisley = 1, Chevrons = 2, etc"
	  	index = gets.to_i - 1
	    client_selection2 = client_paper2[index]
	  end
  end
 p "Any other client wallpaper preferences? yes or no."
 user_input = gets.chomp
  if user_input == "yes"
  	p "Please enter your client's other wallpaper prefernce. Enter the number place of of the pattern on the list (Paisley = 1, Chevrons = 2, etc)"
    client_paper3 = ["Paisley ", "Chevrons ", "Photorealistic Woodsy Scenes With Squirrels ", "Photorealistic Woodsy Scenes WithOUT Squirrels ", "Abstract Woodsy Scenes "]
	index = gets.to_i - 1
	client_selection3 = client_paper3[index]
	p "Is #{client_selection3} correct? yes or no."
	  user_input = gets.chomp
	  if user_input == "no"
	  	p "List client wallpaper preference. Enter the number place of the pattern on the list (Paisley = 1, Chevrons = 2, etc"
	  	index = gets.to_i - 1
	    client_selection3 = client_paper3[index]
	  end
  end
  p "Any other client wallpaper preferences? yes or no."
 user_input = gets.chomp
  if user_input == "yes"
  	p "Please enter your client's other wallpaper prefernce. Enter the number place of of the pattern on the list (Paisley = 1, Chevrons = 2, etc)"
    client_paper4 = ["Paisley ", "Chevrons ", "Photorealistic Woodsy Scenes With Squirrels ", "Photorealistic Woodsy Scenes WithOUT Squirrels ", "Abstract Woodsy Scenes "]
	index = gets.to_i - 1
	client_selection4 = client_paper4[index]
	p "Is #{client_selection4} correct? yes or no."
	  user_input = gets.chomp
	  if user_input == "no"
	  	p "List client wallpaper preference. Enter the number place of the pattern on the list (Paisley = 1, Chevrons = 2, etc"
	  	index = gets.to_i - 1
	    client_selection4 = client_paper4[index]
	  end
  end
  p "Any other client wallpaper preferences? yes or no."
 user_input = gets.chomp
  if user_input == "yes"
  	p "Please enter your client's other wallpaper prefernce. Enter the number place of of the pattern on the list (Paisley = 1, Chevrons = 2, etc)"
    client_paper5 = ["Paisley ", "Chevrons ", "Photorealistic Woodsy Scenes With Squirrels ", "Photorealistic Woodsy Scenes WithOUT Squirrels ", "Abstract Woodsy Scenes "]
	index = gets.to_i - 1
	client_selection5 = client_paper5[index]
	p "Is #{client_selection5} correct? yes or no."
	  user_input = gets.chomp
	  if user_input == "no"
	  	p "List client wallpaper preference. Enter the number place of the pattern on the list (Paisley = 1, Chevrons = 2, etc"
	  	index = gets.to_i - 1
	    client_selection5 = client_paper5[index]
	  end
  end
p "What is your client's opinion of Ombre? Enter their selection's number place on the list."
client_ombre = ["Fierce", "So last season", "Practically medieval in its appalling irrelevance"]
index = gets.to_i - 1 
ombre_selection = client_ombre[index]
p "is #{ombre_selection} correct? yes or no."
  user_input = gets.chomp
  if user_input == "no"
  	p "What is your client's opinion of Ombre? Enter their selection's number place on the list."
  	index2 = gets.to_i - 1
  	ombre_selection = client_ombre[index2]
  end
client = {
	:name => client_name,
	:address => client_address,
	:email => client_email,
	:number => client_number,
	:blue => client_blue,
	:paper => client_selection + client_selection2 + client_selection3 + client_selection4 + client_selection5,
	:ombre => ombre_selection
}

p client[:name]
p client[:address]
p client[:email]
p client[:number]
p client[:blue]
p client[:paper]
p client[:ombre]

# # The value of the keys will be a variable that has a gets.chomp value. 
# # The answer variable to each question will be gets.chomp and that answer variable will be the value for the key in the hash.
# #For wallpaper and Ombre opinions, we are gonna want to use arrays. 

# p "Hello! Thank you for using Bigfoot's Interior Decoration. We will need some infromation from your client's application."
# p "Please enter your client's name."
# client_name = gets.chomp
# p "Please enter your client's address."
# client_address = gets.chomp
# p "Please enter your client's email."
# client_email = gets.chomp
# p "Please enter your client's phone number."
# client_number = gets.chomp
# p "What is your client's listed favorite shade of blue?"
# client_blue = gets.chomp
# p "List client wallpaper preferences. Enter the number place of the pattern on the list (Paisley = 1, Chevrons = 2, etc"
# client_paper = ["Paisley", "Chevrons", "Photorealistic Woodsy Scenes With Squirrels", "Photorealistic Woodsy Scenes WithOUT Squirrels", "Abstract Woodsy Scenes"]
# client_selection = client_paper[index]
# clerk_input = gets.to_i
#   if clerk_input == 1
#   	index = 0
#   elsif clerk_input == 2
#   	index = 1
#   elsif clerk_input == 3
#   	index = 2
#   elsif clerk_input == 4
#   	index = 3
#   elsif clerk_input == 5
#   	index = 4
#   else
#   	p "not a valid listing."
#   end

# p "What is your client's opinion of Ombre?"
# client_ombre = ["Fierce", "So last season", "Practically medieval in its appalling irrelevance"]

# client = {
# 	:name => client_name,
# 	:address => client_address,
# 	:email => client_email,
# 	:number => client_number,
# 	:blue => client_blue,
# 	:paper => client_selection,
# 	:ombre => client_ombre
# }

# p client[:name]
# p client[:address]
# p client[:email]
# p client[:number]
# p client[:blue]
# p client[:paper]
# p client[:ombre]