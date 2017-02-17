# describe Dancer do
#   let(:dancer) { Dancer.new("Misty Copeland", 33) }
#================================================================================================

#:dancer is composed of getter setter methods that accept name and age as arguments

#================================================================================================
#   it "has a readable name" do
#     expect(dancer.name).to eq "Misty Copeland"
#   end
#================================================================================================

#name is an attribute method. 
  #will want an attr_accessor :name 

#================================================================================================
#   it "has a readable age" do
#     expect(dancer.age).to eq 33
#   end
#================================================================================================

# age is composed of getter and setter methods. 
  #The getter method is @age and setter method is @age + 1

#================================================================================================
#   it "has a writeable age" do
#     dancer.age = 34
#     expect(dancer.age).to eq 34
#   end
# end

#  it "twirls" do
#    expect(dancer.pirouette).to eq "*twirls*"
#  end

#  it "bows to a partner" do
#    expect(dancer.bow).to eq "*bows*"
#  end

# it "can add parters to the dance card queue" do
#   dancer.queue_dance_with("Mikhail Baryshnikov")
#   expect(dancer.card).to eq ["Mikhail Baryshnikov"]
#   dancer.queue_dance_with("Anna Pavlova")
#   expect(dancer.card).to eq ["Mikhail Baryshnikov", "Anna Pavlova"]
#   end
  
#   it "can start the next dance in the queue" do
#   dancer.queue_dance_with("Mikhail Baryshnikov")
#   dancer.queue_dance_with("Anna Pavlova")
#   expect(dancer.begin_next_dance).to eq "Now dancing with Mikhail Baryshnikov."
#   expect(dancer.card).to eq ["Anna Pavlova"]
#   end

class Dancer
  attr_accessor  :age
  def initialize(name, age)
    @age = age
    @name = name
    @card = []
  end
  def name
    @name
  end
  def pirouette 
    "*twirls*"
  end
  def bow 
    "*bows*"
  end
  def queue_dance_with(performer)
    @card << performer
  end 
  def card
    @card
  end
  # def begin_next_dance
  #   #Got it to return the string, but it returns the last name called in the queue. 
  #   i = 0
  #   while i != @card.length
  #     queue = "Now dancing with #{@card[i]}."
  #     p queue
  #     #@card.shift
  #     i +=1
  #   end
  #   queue
  # end
  def begin_next_dance
    i = 0
    while i != 2 #@card.length
      queue = "Now dancing with #{@card[0]}."
      p queue
      @card.shift
      i +=1
    end
    queue
  end
end



  
