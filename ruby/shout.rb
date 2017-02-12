module Shout
  # we'll put some methods here soon, but this code is fine for now!
  def self.yell_angrily(words)
  	words + "!!!" + " :("
  end

  def self.yelling_happily(words)
  	words + "!!!" + " :DDDDD"
  end
end
 
p Shout.yell_angrily("GET OFF MY LAWN")
p Shout.yelling_happily("WELCOME TO THE PARTY!")
