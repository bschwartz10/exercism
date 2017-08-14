class Raindrops
  DICTIONARY = {3 => 'Pling', 5 => 'Plang', 7 => 'Plong'}

  def self.convert(number)
    sounds = ''
    DICTIONARY.each do |k, v|
      sounds << v if number % k == 0
    end
    sounds.empty? ? number.to_s : sounds
  end

end

module BookKeeping
  VERSION = 3
end
