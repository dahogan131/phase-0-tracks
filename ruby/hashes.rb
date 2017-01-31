# The value of the keys will be a variable that has a gets.chomp value. 
# The answer variable to each question will be gets.chomp and that answer variable will be the value for the key in the hash.


p "Hello! Thank you for using Bigfoot's Interior Decoration. We will need some infromation from your client's application."
p "Please enter your client's name."
client_name = gets.chomp
p "Please enter your client's address."
client_address = gets.chomp
p "Please enter your client's email."
client_email = gets.chomp
p "Please enter your client's phone number."
client_number = gets.chomp
p "What is your client's listed favorite shade of blue?"
client_blue = gets.chomp
p "List client wallpaper preferences."
client_paper = gets.chomp
p "What is your client's opinion of Ombre?"
client_ombre = gets.chomp

client = {
	:name => client_name,
	:address => client_address,
	:email => client_email,
	:number => client_number,
	:blue => client_blue,
	:paper => client_paper,
	:ombre => client_ombre
}

p client[:name]
p client[:address]
p client[:email]
p client[:number]
p client[:blue]
p client[:paper]
p client[:ombre]