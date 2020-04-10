class Triangle
 attr_accessor :length1, :length2, :length3
 
 def initialize(length1, length2, length3)
   @length3 = length3
   @length2 = length2
   @length1 = length1
   @all_lengths = []
   @all_lengths << @length1 
   @all_lengths << @length2class Triangle
  attr_reader :a, :b, :c
  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    validate_triangle #runs this method
    #returns what kind of triangle it is
    if a == b && b == c
      :equilateral
    elsif a == b || b == c || a == c
      :isosceles
    else
      :scalene
    end
  end

  def validate_triangle
    #creates an array of boolean values basedon the input values of a,b,c ; so that if any of those return false, the method will return false, if the array has a false value in it, then the raise Triangle Error runs
    #otherwise this returns true
    real_triangle = [(a + b > c), (a + c > b), (b + c > a)]
    #below tests to see if a,b or c is zero or negative
    #if any of them are zero or negative, then it adds a false value to the array, so that the Triangle Error will be raised
    [a, b, c].each { |s| real_triangle << false if s <= 0 }
    raise TriangleError if real_triangle.include?(false)
  end
end

class TriangleError < StandardError
end
   @all_lengths << @length3
 end
 
 def kind()
   if @all_lengths.any?{|length| length == 0}
     raise TriangleError
   elsif (@length1+@length2 <= @length3) || (@length1+@length3 <= @length2) || (@length2+@length3 <= @length1)
   raise TriangleError
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

end

class TriangleError < StandardError
  
end
