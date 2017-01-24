p "Hello! What is your name?"
user_name = gets.chomp
p "Hello #{user_name}!"

p "How old are you #{user_name}?"
user_age = gets.to_i
p "#{user_name}, you are #{user_age}."

p "#{user_name}, lunch today is spaggetti. Did you want garlic bread with that?"
user_answer = gets.chomp 

p "#{user_name}, did you want to enroll in our company healthcare plan?"
hmo_answer = gets.chomp