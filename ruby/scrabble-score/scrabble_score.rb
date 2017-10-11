class Scrabble
  LETTER_SCORES = {
      'A' => 1, 'E' => 1, 'I' => 1, 'O' => 1, 'U' => 1,
      'L' => 1, 'N' => 1, 'R' => 1, 'S' => 1, 'T' => 1,
      'D' => 2, 'G' => 2,
      'B' => 3, 'C' => 3, 'M' => 3, 'P' => 3,
      'F' => 4, 'H' => 4, 'V' => 4, 'W' => 4, 'Y' => 4,
      'K' => 5,
      'J' => 8, 'X' => 8,
      'Q' => 10, 'Z' => 10
    }

  def self.score(word)
    new(word).score
  end

  attr_reader :word

  def initialize(word)
    @word = sanitize_input(word)
  end

  def score
    return word if word == 0
    word.upcase.chars.reduce(0) do |sum, letter|
      sum += LETTER_SCORES[letter]
      sum
    end
  end

  private

  def sanitize_input(word)
    word ? word.gsub(/\W/,'') : 0
  end

end
