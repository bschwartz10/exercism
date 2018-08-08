class Triangle
  attr_reader :sides

  def initialize(sides)
    @sides = sides
    return unless triangle_inequality?
  end

  def equilateral?
    return false if sides.any? {|side| side == 0}
    sides.uniq.length == 1
  end

  def isosceles?
    return unless triangle_inequality?
    sides[0] == sides[1]  ||
    sides[0] == sides[-1] ||
    sides[1] == sides[-1]
  end

  def triangle_inequality?
    sides[0] + sides[1]  >= sides[-1] &&
    sides[0] + sides[-1] >= sides[1]  &&
    sides[1] + sides[-1] >= sides[0]
  end

  def scalene?
    return unless triangle_inequality?
    sides[0] != sides[1]  &&
    sides[0] != sides[-1] &&
    sides[1] != sides[-1]
  end

end

module BookKeeping
  VERSION = 1
end
