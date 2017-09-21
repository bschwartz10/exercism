class PigLatin
  VOWELS = ['a','e','i','o','u', 'yt', 'xr']

  def self.translate(phrase)
    phrase = phrase.split(' ')
    phrase.length.times do |i|
      until VOWELS.include?(phrase[i][0]) || VOWELS.include?(phrase[0][0..1])
        first_letter = phrase[i].slice!(0,1)
        if first_letter == 'q' && phrase[i][0] == 'u'
          phrase[i] += (first_letter + phrase[i][0])
          phrase[i].slice!(0,1)
        else
          phrase[i] += first_letter
        end
      end
      phrase[i] += 'ay'
    end
    phrase.join(' ')
  end

end

module BookKeeping
  VERSION = 1 
end
