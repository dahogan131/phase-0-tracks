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

class Dancer
  attr_accessor  :age
  def initialize(name, age)
    @age = age
    @name = name
  end
  #Getter Methods
  # def age 
  #   @age
  # end
  def name
    @name
  end
  #Setter Method
  # def age=
  #   @age + 1
  # end
end



  
