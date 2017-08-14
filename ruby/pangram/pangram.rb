class Pangram

  def self.pangram?(phrase)
    pangram = phrase.downcase
    ('a'..'z').all? { |letter| pangram.include?(letter) }
  end

end

module BookKeeping
  VERSION = 4
end
