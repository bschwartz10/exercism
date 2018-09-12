class Acronym

  def self.abbreviate(phrase)
    standardized_phrase = phrase.gsub(/-/,' ')
    acronym = ''
    standardized_phrase.split(' ').each do |word|
      acronym << word[0].upcase
    end
    acronym
  end


end
