    require 'pry'
class Triangle
        attr_accessor :b, :a, :c, :lengths

       
    
    def initialize(a, b, c)
     @a = a
     @b = b
     @c = c
     @lengths = [@a, @b, @c]
    end

    class TriangleError < StandardError
    end

    def valid?
      ((@lengths[0] > 0) && (@lengths[1] > 0) && (@lengths[2] > 0)) && ((@lengths[0] + @lengths[1] > @lengths[2]) && (@lengths[0] + @lengths[2] > @lengths[1]) && (@lengths[1] + @lengths[2] > @lengths[0]))
     end
    
    def kind
      if !valid?
        raise TriangleError
      elsif @lengths[0] == @lengths[1] && @lengths[1] == @lengths[2] 
        return :equilateral
      elsif @lengths[0] != @lengths[1] && @lengths[1] != @lengths[2] && @lengths[0] != @lengths[2]
        return :scalene
      else
        return :isosceles
      end
    end

end



#   def kind(lengths)
#     lengths.each do |a, b, c|
#     if !lengths.valid?
#       raise TriangleError
#     elsif a == b && b == c 
#         :equilateral
#     elsif length.each.uniq == 2
#         :isosceles
#     else #a != b && b != c && a != c 
#         :scalene
#       end
#     end
#   end

