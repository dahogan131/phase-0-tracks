require_relative '6_5'

describe Multiply do 
	it "multiplies two integers" do 
	multiply = Multiply.new 
	expect(multiply.mult(3,7)).to eq 21
	end
end

