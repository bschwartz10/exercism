class Array
  def accumulate(&block)
    result = []
    each do |element|
      result << block.call(element)
    end
    result
  end
end


module BookKeeping
  VERSION = 1
end
