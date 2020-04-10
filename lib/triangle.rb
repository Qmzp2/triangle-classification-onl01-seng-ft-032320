class Triangle
 attr_accessor :length1, :length2, :length3
 
 def initialize(length1, length2, length3)
   @length3 = length3
   @length2 = length2
   @length1 = length1
   @all_lengths = []
   @all_lengths << @length1 
   @all_lengths << @length2
   @all_lengths << @length3
 end
 
 def kind()
   if @all_lengths
   
 end
 
 class TriangleError < StandardError
   
 end
 
 
end
