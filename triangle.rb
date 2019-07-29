require 'pry'
class Triangle
  attr_reader :sides
  def initialize (sides)
    @sides=sides.sort
    @a,@b,@c =@sides
  end

  def equilateral?
    (@a==@b && @b==@c) && @a!=0
  end

  def valid?
    (@a + @b >= @c) && (@b + @c >= @a) && (@a + @c >= @b)
  end

  def isosceles?
    valid? && ( ( @a!= @b && @b == @c ) || ( @a == @b && @b != @c ) || ( @a == @c && @c != @b ) || ( @a == @b && @b == @c ) )
  end

  def scalene?
    ( valid? && ( @a != @b && @b != @c && @c != @a ) )
  end

end
