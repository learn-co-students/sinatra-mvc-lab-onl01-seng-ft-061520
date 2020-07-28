class PigLatinizer
  attr_reader :phrase

  def initialize(phrase=nil)
    @phrase = phrase
  end

  #"flatiron school" becomes "atironflay oolschay"
  #"big apple" becomes "igbay appleway"

  def separate_into_words
    @phrase.split(" ")
  end

  def ay_or_way
    self.separate_into_words.map do |w|
      if w.start_with?(/[aeiouAEIOU]/)
        w + "way"
      else
        letters = w.split('')
        counter = 0
        until letters[counter].start_with?(/[aeiouAEIOU]/) do
            counter += 1
        end
        letters.rotate!(counter).join + "ay"
      end
    end
  end

  def piglatinize(words)
    words.split(" ").map do |w|
      if w.start_with?(/[aeiouAEIOU]/)
        w + "way"
      else
        letters = w.split('')
        counter = 0
        until letters[counter].start_with?(/[aeiouAEIOU]/) do
            counter += 1
        end
        letters.rotate!(counter).join + "ay"
      end
    end.join(" ")
  end

end
