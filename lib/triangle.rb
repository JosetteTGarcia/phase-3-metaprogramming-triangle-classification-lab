class Triangle

attr_reader :side_one, :side_three, :side_two

def initialize(side_one, side_two, side_three)
  @side_one = side_one
  @side_two = side_two
  @side_three = side_three
end


def kind 
  check_triangle
  if side_one == side_two && side_two == side_three
    :equilateral
  elsif side_one == side_two || side_two == side_three || side_one == side_three
    :isosceles
  else side_one != side_two || side_one != side_three || side_three != side_two
    :scalene
  end

end

def check_triangle

  if side_one + side_two + side_three == 0 || side_one + side_two > side_three || side_two + side_three > side_one || side_three + side_one > side_two
    raise TriangleError
  end

end



class TriangleError < StandardError
  # triangle error code
end
end
