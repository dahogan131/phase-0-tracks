#Initialize the units for height, length and width
#Convert width, height and length into metric units

#In driver code, will pass the values of the respective keys from the data structures as arguments. 


require_relative 'data_practice'

class Metric

	def initialize(height, length, width)
		@height = height
		@length = length
		@width = width
	end

	def height_conversion
		@height * 2.54
	end 

end 

testing = Metric.new(Pkg_Std[:package1][:height], Pkg_Std[:package1][:length], Pkg_Std[:package1][:width])

p testing.height_conversion