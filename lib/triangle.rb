class Triangle
  attr_accessor :length1, :length2, :length3
  def initialize(length1, length2, length3)
    @length1 = length1
    @length2 = length2
    @length3 = length3
  end

def kosher_triangle 
    length1.positive? && length2.positive? && length3.positive?
  end 



  def kind
    if kosher_triangle == true && kosher_triangle2 == true 
      puts true 
    else 
      raise TriangleError 
    end 
    
    if length1 == length2 && length2 == length3 && length1 == length3
      :equilateral
    elsif length1 != length2 && length2 != length3 && length3 != length1
      :scalene 
    else 
      :isosceles
    end 
  end
  
  
  
  def kosher_triangle2 
    length1 + length2 > length3 && length1 + length3 > length2 && length2 + length3 > length1
  end 
  
class TriangleError < StandardError
  
end


  
end
