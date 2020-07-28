class PigLatinizer

  def piglatinize(input)
    input.split(" ").map {|word| piglatinize_input(word)}.join(" ")
  end

  def is_a_vowel?(letter)
    letter.match(/[AaEeIiOoUu]/)
  end

  def piglatinize_input(word)
    if is_a_vowel?(word[0])
      word + "way"
    else
      vowel_index = word.index(/[AaEeIiOoUu]/)
      consonants = word.slice(0..vowel_index-1)
      leftover_word = word.slice(vowel_index..word.length)
      leftover_word + consonants + "ay"
    end
  end
end
