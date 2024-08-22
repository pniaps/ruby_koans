# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#
def triangle(a, b, c)
  if a==0 || b==0 || c==0
    raise TriangleError.new("A triangle should not have any sides of length 0. If it does, it's either a line segment or a point, depending on how many sides are 0.")
  end
  if a<0 || b<0 || c<0
    raise TriangleError.new("Negative length doesn't make sense.")
  end
  if a + b <= c || a + c <= b || b + c <= a
    raise TriangleError.new("Any two sides of a triangle should add up to more than the third side.")
  end
  if a == b and b == c
    :equilateral
  else
    if a == b or b == c or a == c
      :isosceles
    else
      :scalene
    end
  end
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
