class Nucleotide

  VALID_LETTERS = 'ACGT'

  def self.from_dna(strand)
    validate_strand(strand)
    strand
  end

  def self.validate_strand(strand)
    strand.chars.each do |letter|
      raise ArgumentError unless VALID_LETTERS.include?(letter)
    end
  end


end


class String

  DEFAULT_HISTOGRAM = {
    'A' => 0,
    'T' => 0,
    'C' => 0,
    'G' => 0
  }

  def histogram
    return DEFAULT_HISTOGRAM if self == ''
    histogram = DEFAULT_HISTOGRAM.clone
    chars.reduce(histogram) do |agg, letter|
      agg[letter] +=1
      agg
    end
  end

end
