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

emp_ct = 3
until emp_ct == 0
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
  if user_name == ("Dracula") || ("Nosforatu") || ("Chocula")
	vamp_name = true
  else
	vamp_name = false
  end

  if user_age > 120
	vamp_age = true
  else
	vamp_age = false
  end

  if user_answer == "no"
	vamp_answer = true
  else
	vamp_answer = false
  end

  if hmo_answer == "no"
	vamp_hmo = true
  else
	vamp_hmo = false
  end

  if vamp_name == true
	p "Definitely a vampire."
  elsif (vamp_age == true && vamp_answer == true && vamp_hmo == true)
	p "Almost certainly a vampire"
  elsif vamp_age == true && (vamp_answer == true || vamp_hmo == true)
	p "Probably a vampire"
  elsif (vamp_age == false && vamp_name == false && vamp_answer == false && vamp_hmo == false)
	p "Probably not a vampire."
  else
	p "Dunno... could be... try and put 'em in the sun."
  end
  emp_ct = emp_ct - 1
end





#An until loop makes the most sense here. 
#Thinking, assign each employee a number. 
#If/else inside the until. 




	