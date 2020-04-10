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
   if @all_lengths.any?{|length| length == 0}
     raise TriangleError
   elsif (@length1+@length2 <= @length3) || (@length1+@length3 <= @length2) || (@length2+@length3 <= @length1)
   raise TriangleError
 else
      if (@length1 == @length2) && (@side_2 == @side_3)
        :equilateral
      elsif (@side_1 == @side_2) || (@side_2 == @side_3) || (@side_1 == @side_3)
        :isosceles
      elsif (@side_1 != @side_2) && (@side_2 != @side_3) && (@side_1 != @side_3)
        :scalene
      end
    end

  end

end

class TriangleError < StandardError
  # triangle error code
end
