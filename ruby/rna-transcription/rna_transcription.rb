class Complement
  def self.of_dna(nucleotides)
    rna = nucleotides.chars.map do |nucleotide|
      return '' unless dna_nucleotides[nucleotide]
      dna_nucleotides[nucleotide]
    end
    rna.join('')
  end


  def self.dna_nucleotides
    {
      'C' => 'G',
      'G' => 'C',
      'T' => 'A',
      'A' => 'U',
    }
  end
end

module BookKeeping
  VERSION = 4
end
