class Hamming
  def self.compute(strand_one, strand_two)
    raise ArgumentError if strand_one.length != strand_two.length
    length = strand_one.length
    difference = 0
    length.times {|i| difference += 1 if strand_one[i] != strand_two[i]}
    difference
  end
end

module BookKeeping
  VERSION = 3
end
