class CustomSet
  include Enumerable

  attr_reader :elements

  def initialize(elements = [])
    @elements = elements
  end

  def empty?
    elements.empty?
  end

  def member?(element)
    elements.include?(element)
  end

  def subset?(set)
    self.elements.all? {|element| set.member?(element)}
  end

  def disjoint?(set)
    self.elements.none? {|element| set.member?(element)}
  end

  def ==(other_set)
    subset?(other_set) && other_set.subset?(self)
  rescue NoMethodError
    false
  end

  def add(element)
    elements << element unless elements.member?(element)
    self
  end

  def intersection(set)
    self.elements.reduce(CustomSet.new []) do |agg, element|
      agg.add(element) if set.member?(element)
      agg
    end
  end

  def difference(set)
    elements = self.elements.reject {|element| set.member?(element)}
    elements.reduce(CustomSet.new []) do |agg, element|
      agg.add(element)
      agg
    end
  end

  def union(set)
    union_set = CustomSet.new elements
    set.elements.each {|element| union_set.add(element)}
    union_set
  end

end

module BookKeeping
  VERSION = 1
end
