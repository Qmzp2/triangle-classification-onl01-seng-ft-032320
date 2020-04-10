class Triangle
  attr_accessor :length1, :length2, :length3
  def initialize(length1, length2, z)
    @length1 = length1
    @length2 = length2
    @z = z
  end

  def kind
    if kosher_triangle == true && kosher_triangle2 == true 
      puts true 
    else 
      raise TriangleError 
    end 
    
    if length1 == length2 && length2 == z && length1 == z
      :equilateral
    elsif length1 != y && y != z && z != length1
      :scalene 
    else 
      :isosceles
    end 
  end
  
  def kosher_triangle 
    length1.positive? && y.positive? && z.positive?
  end 
  
  def kosher_triangle2 
    length1 + y > z && length1 + z > y && y + z > length1
  end 
  
class TriangleError < StandardError
  
end


  
end
