require 'minitest/autorun'
require_relative 'acronym'

# Common test data version: 1.1.0 cae7ae1
class AcronymTest < Minitest::Test
  def test_basic
    # skip
    assert_equal "PNG", Acronym.abbreviate('Portable Network Graphics')
  end

  def test_lowercase_words
    assert_equal "ROR", Acronym.abbreviate('Ruby on Rails')
  end

  def test_punctuation

    assert_equal "FIFO", Acronym.abbreviate('First In, First Out')
  end

  def test_all_caps_words

    assert_equal "PHP", Acronym.abbreviate('PHP: Hypertext Preprocessor')
  end

  def test_non_acronym_all_caps_word

    assert_equal "GIMP", Acronym.abbreviate('GNU Image Manipulation Program')
  end

  def test_hyphenated
    assert_equal "CMOS", Acronym.abbreviate('Complementary metal-oxide semiconductor')
  end

  # Problems in exercism evolve over time, as we find better ways to ask
  # questions.
  # The version number refers to the version of the problem you solved,
  # not your solution.
  #
  # Define a constant named VERSION inside of the top level BookKeeping
  # module, which may be placed near the end of your file.
  #
  # In your file, it will look like this:
  #
  # module BookKeeping
  #   VERSION = 1 # Where the version number matches the one in the test.
  # end
  #
  # If you are curious, read more about constants on RubyDoc:
  # http://ruby-doc.org/docs/ruby-doc-bundle/UsersGuide/rg/constants.html

  def test_bookkeeping
    skip
    assert_equal 4, BookKeeping::VERSION
  end
end
