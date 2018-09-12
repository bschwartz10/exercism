class Brackets

  DICTIONARY = {
    ']' => '[',
    '}' => '{',
    ')' => '('
  }

  def self.paired?(str)
    symbols = []
    str.chars.each do |symbol|
      symbols << symbol if DICTIONARY.values.include?(symbol)
      if DICTIONARY[symbol]
        if symbols[-1] == DICTIONARY[symbol]
          symbols.pop
        else
          return false
        end
      end
    end
    symbols.empty?
  end

end

module BookKeeping
  VERSION = 4
end
