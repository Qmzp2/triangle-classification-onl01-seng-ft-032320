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
   if @all_lengths.any?{|length| length <= 0}
     begin
     raise TriangleError
     rescue TriangleError => error
     puts error.message
   end
   elsif (@length1+@length2 <= @length3) || (@length1+@length3 <= @length2) || (@length2+@length3 <= @length1)
    begin
     raise TriangleError
     rescue TriangleError => error
     puts error.message
   end
 else
      if (@length1 == @length2) && (@length2 == @length3)
        :equilateral
      elsif (@length1 == @length2) || (@length2 == @length3) || (@length1 == @length3)
        :isosceles
      elsif (@length1 != @length2) && (@length2 != @length3) && (@length1 != @length3)
        :scalene
      end
    end

end

class TriangleError < StandardError
  def message
    "idk what I'm doing"
  end
end



end

