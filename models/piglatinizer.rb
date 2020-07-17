class PigLatinizer

  def piglatinize(text)
    words = text.split(" ")
    p_words = []
    words.each do |word|
      if word.length > 1 && (word =~ /\b[aeiou]/i) != 0
        index = /[AEIOUaeiou]/i =~ word
        first = word.slice(0..index-1)
        last = word.slice(index..word.length()-1)
        p_words << "#{last}#{first}ay"
      else
        p_words <<  word + "way"
      end
    end
    p_words.join(" ")
  end
end
