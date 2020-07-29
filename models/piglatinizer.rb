require 'pry'
class PigLatinizer
  attr_accessor :text

  def initialize
  end


  def piglatinize_word(word)
    vowels = ["a", "e", "i", "o", "u"]
    if vowels.include?(word[0].downcase)
      "#{word}way"
    else
      i = 0
      to_the_back = []
      until vowels.include?(word[i].downcase)
        to_the_back << word[i]
        i += 1
      end
      "#{word[to_the_back.length..-1] + to_the_back.join + 'ay'}"
    end
  end

  def piglatinize(phrase)
    words = phrase.split(" ")
    latinized_words = words.map { |word| piglatinize_word(word) }
    latinized_words.join(" ")
  end
end
