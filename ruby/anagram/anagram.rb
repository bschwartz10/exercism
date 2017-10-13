class Anagram
  attr_reader :detector

  def initialize(detector)
    @detector = detector
  end

  def match(potential_anagrams)
    anagrams = potential_anagrams.select do |word|
      evaluator(word) == evaluator(detector) && distinct_from_detector(word)
    end
    anagrams
  end

private

  def evaluator(word)
    word.upcase.chars.reduce({}) do |agg, letter|
      agg[letter] ? agg[letter] += 1 : agg[letter] = 1
      agg
    end
  end

  def distinct_from_detector(word)
    word.upcase != detector.upcase
  end

end

module BookKeeping
  VERSION = 2
end
