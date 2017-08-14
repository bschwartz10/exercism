require_relative 'book_keeping'

class Hamming
  include BookKeeping

  def self.compute(first_strand, second_strand)
    check_length(first_strand, second_strand)

    counter = 0
    index = 0
    length = first_strand.length

    length.times do
      counter += 1 if first_strand[index] != second_strand[index]
      index += 1
    end
    counter
  end

  def self.check_length(first_strand, second_strand)
    if first_strand.length != second_strand.length
      raise ArgumentError.new
    end
  end

end
