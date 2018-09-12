class Isogram
  def self.isogram?(input)
    output = letter_count(input)
    output.all? {|key, value| value == 1}
  end

  def self.letter_count(input)
    input.downcase.chars.reduce({}) do |accum, letter|
      accum[letter] ? accum[letter] += 1 : accum[letter] = 1
      accum
    end
  end
end
