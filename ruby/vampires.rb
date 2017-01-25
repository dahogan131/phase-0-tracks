wolves_like_sunshine = true
wolves_like_garlic = true
vampires_like_sunshine = false
vampires_like_garlic = false

p wolves_like_garlic && wolves_like_sunshine
p wolves_like_garlic || vampires_like_garlic
p wolves_like_garlic && vampires_like_garlic
p wolves_like_garlic && (vampires_like_sunshine || vampires_like_garlic)
p (wolves_like_garlic && vampires_like_garlic) || wolves_like_sunshine
p vampires_like_garlic
p !vampires_like_garlic
p !(wolves_like_sunshine && wolves_like_garlic)

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

p "Thank you for your honest responses, #{user_name}!"

wolves_like_sunshine = true
wolves_like_garlic = true
vampires_like_sunshine = false
vampires_like_garlic = false

wolves_like_garlic && wolves_like_sunshine
wolves_like_garlic || vampires_like_garlic
wolves_like_garlic && vampires_like_garlic
wolves_like_garlic && (vampires_like_sunshine || vampires_like_garlic)
(wolves_like_garlic && vampires_like_garlic) || wolves_like_sunshine
vampires_like_garlic
!vampires_like_garlic
!(wolves_like_sunshine && wolves_like_garlic)