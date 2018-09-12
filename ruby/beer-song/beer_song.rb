class BeerSong

  # def song
  #   verses(99, 0)
  # end

  def verse(num)
    line_one = "#{num_of_beers(num).capitalize} #{one_bottle_left(num)} of beer on the wall, #{num_of_beers(num)} #{one_bottle_left(num)} of beer."
    line_two = num != 0 ?
      "Take #{one_or_it(num)} down and pass it around, #{beer_remaining(num)} #{two_bottles_left(num)} of beer on the wall." :
      "Go to the store and buy some more, 99 bottles of beer on the wall."
    "#{line_one}\n#{line_two}\n"
  end

  def verses(first_verse, end_verse)
    difference = (first_verse - end_verse) + 1
    current_verse = first_verse
    result = ''

    difference.times do
      result += "#{verse(current_verse)}\n"
      current_verse -= 1
    end
    result.chop
  end

  def beer_remaining(num)
    num == 1 ? 'no more' : "#{num - 1}"
  end

  def two_bottles_left(num)
    num == 2 ? 'bottle' : 'bottles'
  end

  def one_bottle_left(num)
    num == 1 ? 'bottle' : 'bottles'
  end

  def one_or_it(num)
    num == 1 ? 'it' : 'one'
  end

  def num_of_beers(num)
    num >= 1 ? num.to_s : 'no more'
  end

end

module BookKeeping
  VERSION = 3
end
