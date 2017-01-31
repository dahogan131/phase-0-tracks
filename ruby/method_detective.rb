# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

p "iNvEsTiGaTiOn".swapcase
# => “InVeStIgAtIoN”

p "zom".insert(2, 'o')
# => “zoom”

p "enhance".center(20)
# => "    enhance    "

p "Stop! You’re under arrest!".upcase
# => "STOP! YOU’RE UNDER ARREST!"

a = "the usual"
#=> "the usual suspects"

a << " suspects"
# => "the usual suspects"
p a.concat(33)

p "The case of the disappearing last letter".chop
# => "The case of the disappearing last lette"

string = "The mystery of the missing first letter"
string.slice!(0)
p string
# => "he mystery of the missing first letter"

# "Elementary,    my   dear        Watson!".<???>
# => "Elementary, my dear Watson!"

string = "Elementary,    my   dear        Watson!"
string.slice!(12..14)
string.slice!(15..16)
string.slice!(20..26)
p string
# => "Elementary, my dear Watson!"
p "z".ord
# => 122 
# (What is the significance of the number 122 in relation to the character z?)

# 122 is the integer ordinal for z. The integer ordinal represents the ordinal numeric place "in line" for the character. 

p "How many times does the letter 'a' appear in this string?".count "a"
# => 4