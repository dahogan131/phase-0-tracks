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

# times = 0 
# index = 0
# word = "camel"
# user_input = gets.chomp
# while times != word.length
#   correct_letters = "_" * word.length
#   correct_letters = correct_letters.chars
#   word = word.chars
#   p word[index]
#   p correct_letters
#   p correct_letters.class
#   p "guess the word"
#   correct_letters = correct_letters.join
#   word = word.join
#   user_input = gets.chomp
#   index +=1 
#   times +=1 
# end
# p "done"

#UPDATED PSEUDOCODE: =========================================================

#Methods will flow into one another. Need Flow pattern. 
  # number_guesses --> letter_guess --> word_guess -->

#METHODS NEEDED:
#initialize
#Method for the number of letter guesses allowed until the program ends
  #
#Method for quessing letters
  # Runs while the method for set number of letter guesses runs. 
  # If user input = any of the indeces for the secret word, correct letter guess = true
  # If user input != any of the indeces for the secret word, correct letter guess = false
#Method for determining if the word was guessed in the allotted number of guesses
  #If the maximum number of letter guesses boolean = false and the correct answer boolean = false, continue to run the while loop for number of guesses. 
  #If the maximum number of letter guesses boolean = false and the correct answer boolean = true, discontinue the while loop for number of guesses
  #If the maximum number of letter guesses boolean = true and the correct answer boolean = false, the correct word boolean = false
  #If the maximum number of letter guesses boolean = true and the correct answer boolean = true, the correct word boolean = true
  
#Method for replacing '_' with correct letter 
  #May be able to put this conditional in the letter guess method
#Driver Code:
  #Driver Code will operate a while loop when the method of letter guesses not equaling the limit of guesses reuturns true. 
  #When the Method for letter guesses not equaling the limit of guesses returns false, the driver code will refer to the method determining if the 
  
  #Methods will flow into one another. Need Flow pattern. 
  # number_guesses --> letter_guess --> word_guess -->

  #===================================================================================================

#This program is more compact, but has a serious bug.
#It will only mark as the correct answer if the letter guessed is specific to the index in the loop. 

class HangMan 
  attr_reader :name, :blank_space, :user_input, :number_guesses, :game_over
    attr_accessor :name, :blank_space, :user_input, :number_guesses, :game_over
  
  def initialize
    p "Insert a word to be guessed!"
    @name = gets.chomp.chars
    @number_guesses = @name.length + 3
    @blank_space = "_" * @name.length
    p @blank_space
    @game_over = false
    p @number_guesses
  end
  
#Every time user puts in a character, we want to see if it's present in that string.
  def fill_blank_space
  guess = 0
  index = 0
  while guess != @number_guesses
    p "guess a letter"
    
   @user_input = gets.chomp
    @blank_space = @blank_space.chars
    @name = name
# Iterate through the string to see if user input matches any of the characters in the string. 
    if @user_input == @name[index] 
       @blank_space.delete_at(index)
       @blank_space.insert(index, @name[index])
       p @blank_space.join
     else
      p "EHH! Wrong!"
     end
    index +=1 
    @blank_space = @blank_space.join 
    #index +=1 
    guess +=1  
  end   
  end
  def number_guesses
    guess = 0 
    if guess = @number_guesses
      @game_over = true
      guess += 1 
    else
      @game_over = false
    end 
  end  
end 
  
  hangman = HangMan.new 
  #p hangman.name
  while hangman.fill_blank_space
    game.number_guesses
  end


#Second Program: This program lets you guess the user input word, but it only works for words with 11 characters or less.

class HangMan 
  attr_reader :name, :blank_space, :user_input, :number_guesses, :game_over
    attr_accessor :name, :blank_space, :user_input, :number_guesses, :game_over
  
  def initialize
    p "Insert a word to be guessed!"
    @name = gets.chomp.chars
    @number_guesses = @name.length + 3
    @blank_space = "_" * (@number_guesses - 3)
    p @blank_space
    @game_over = false
    p @number_guesses
  end
  def fill_blank_space
  guess = 0
  index = 0
  while guess != @number_guesses
    p "guess a letter"
    
   @user_input = gets.chomp
    @blank_space = @blank_space.chars
    @name = name
    if @user_input == @name[0] 
       @blank_space.delete_at(0)
       @blank_space.insert(0, @name[0])
       p @blank_space.join
     elsif @user_input == @name[1] 
       @blank_space.delete_at(1)
       @blank_space.insert(1, @name[1])
       p @blank_space.join
     elsif @user_input == @name[2] 
       @blank_space.delete_at(2)
       @blank_space.insert(2, @name[2])
       p @blank_space.join
     elsif @user_input == @name[3] 
       @blank_space.delete_at(3)
       @blank_space.insert(3, @name[3])
       p @blank_space.join
     elsif @user_input == @name[4] 
       @blank_space.delete_at(4)
       @blank_space.insert(4, @name[4])
       p @blank_space.join
     elsif @user_input == @name[5] 
       @blank_space.delete_at(5)
       @blank_space.insert(5, @name[5])
       p @blank_space.join
     elsif @user_input == @name[6] 
       @blank_space.delete_at(6)
       @blank_space.insert(6, @name[6])
       p @blank_space.join
     elsif @user_input == @name[7] 
       @blank_space.delete_at(7)
       @blank_space.insert(7, @name[7])
       p @blank_space.join
     elsif @user_input == @name[8] 
       @blank_space.delete_at(8)
       @blank_space.insert(8, @name[8])
       p @blank_space.join
     elsif @user_input == @name[9] 
       @blank_space.delete_at(9)
       @blank_space.insert(9, name[9])
       p @blank_space.join
     elsif @user_input == @name[10] 
       @blank_space.delete_at(10)
       @blank_space.insert(10, @name[10])
       p @blank_space.join
     elsif @user_input == @name[10] 
       @blank_space.delete_at(10)
       @blank_space.insert(10, @name[10])
       p @blank_space.join
     else
      p "EHH! Wrong!"
     end
    index +=1
    @blank_space = @blank_space.join 
    #index +=1 
    guess +=1  
  end   
  end
  def number_guesses
    guess = 0 
    if guess = @number_guesses
      @game_over = true
      guess += 1 
    else
      @game_over = false
    end 
  end  
end 
  
  hangman = HangMan.new 
  #p hangman.name
  while hangman.fill_blank_space
    game.number_guesses
  end

#Rough Draft Code Below ===============================

times = 0 
index = 0 
word = ["c", "a", "m", "e", "l"]
letter_answer = ["_", "_", "_", "_", "_"]
while times != word.length + 3
p "guess a letter"
user_input = gets.chomp 
# Consider if/else being the true/false for the method in determining guess count...  
  if user_input == word[0] 
    letter_answer.delete_at(0)
    letter_answer.insert(0, word[0])
    p letter_answer.join
  elsif user_input == word[1] 
    letter_answer.delete_at(1)
    letter_answer.insert(1, word[1])
    p letter_answer.join
  elsif user_input == word[2] 
    letter_answer.delete_at(2)
    letter_answer.insert(2, word[2])
    p letter_answer.join
  elsif user_input == word[3] 
    letter_answer.delete_at(3)
    letter_answer.insert(3, word[3])
    p letter_answer.join
  elsif user_input == word[4] 
    letter_answer.delete_at(4)
    letter_answer.insert(4, word[4])
    p letter_answer.join
   else
   	p "EHH! Wrong!"
  end
  times += 1
end