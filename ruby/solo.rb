#One user enters a word and another user attempts to guess the word
  #the word to be guessed is assigned gets.chomp 
  #see if gets.chomp works for atrribute in initialize
#Guesses are limited and related to length of word
  #number of guesses = word.length
  #while loop. while the number of guesses does not equal the character length of the word, keep going
#Repeated guesses do not count against user
#Receives continual feedback on state of word. Ex. word = cat, guess = c --> c__
  #In the while loop, first the "______" string is broken up into separate characters in an array.
  #Next, the index of the letter from the secret word will be swapped out with the corresponding index of the ["_", "_", "_"] array.
  # Then the ["_", "_", "_"] array will be put back together into string form. 
#congratulatory message if they lose, taunting message if they win. 

times = 0 
index = 0
word = "camel"
user_input = gets.chomp
while times != word.length
  correct_letters = "_" * word.length
  correct_letters = correct_letters.chars
  word = word.chars
  p word[index]
  p correct_letters
  p correct_letters.class
  p "guess the word"
  correct_letters = correct_letters.join
  word = word.join
  user_input = gets.chomp
  index +=1 
  times +=1 
end
p "done"