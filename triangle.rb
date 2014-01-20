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
  # WRITE THIS CODE
  sides = [a,b,c].sort



  if sides.any? { |length| length <= 0 }
    raise TriangleError, "All sides must be greater than 0"
  elsif sides[0] + sides[1] <= sides[2]
    raise TriangleError, "The sum of the smaller sides must be greater than the largest side"
  else
    if sides.uniq.count == 1
      :equilateral
    elsif sides.uniq.count == 2
      :isosceles
    else :scalene
    end
  end
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
