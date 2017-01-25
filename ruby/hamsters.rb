
p "What is your hamster's name?"
hamster_name = gets.chomp

p "What is #{hamster_name}'s volume level (1-10)?"
vol_level = gets.to_i
if vol_level > 0 && vol_level < 11
	p "#{hamster_name}'s volume level is #{vol_level}."
else
	p "That's not a valid volume level."
end

p "what is #{hamster_name}'s fur color?"
fur_color = gets.chomp
p "#{hamster_name}'s fur color is #{fur_color}."

p "Is #{hamster_name} adoptable? (yes or no)"
adoptable_input = gets.chomp
if adoptable_input == "yes"
	adoptable = true
	p "#{hamster_name} is adoptable!"
elsif adoptable_input == "no"
	adoptable = false
	p "#{hamster_name} is NOT adoptable!"
else
	p "Sorry, no comprende."
end

p "what is #{hamster_name}'s age?"
age_est = gets.chomp
if age_est.empty?
	age_est = nil
else
	age_est = age_est.to_i
	p "#{hamster_name} is #{age_est} years old!"
end

p "Your hamster's name is #{hamster_name}."
p "#{hamster_name} has a volume level of #{vol_level}."
p "#{hamster_name}'s fur color is #{fur_color}."
p "#{hamster_name} is #{age_est} years old!"
if adoptable == true
	p "#{hamster_name} is adoptable!"
else
	p "#{hamster_name} is not adoptable!"
end





#hamster_name = gets.chomp
#vol_level = gets.to_i
#fur_color = gets.chomp
#adoptable_input = gets.chomp
#age_est = gets.to_i



