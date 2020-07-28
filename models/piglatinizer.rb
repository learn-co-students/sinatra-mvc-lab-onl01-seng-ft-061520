class PigLatinizer
  def piglatinize(thing) # user input from form
    pig(thing)
  end

  def pig(thing)
    alpha = ('a'..'z').to_a + ('A'..'Z').to_a # all alphabet into an array, capitalize and downcase
    vowels = %w[a e i o u] + %w[A E I O U] # regex of vowels
    consonants = alpha - vowels # [abcs] - [vowels]

    showme = [] # set up an empty array
    input = thing.split(' ') # separates the input 'thing' into words , splitting at the space ' '
    input.each do |word| # iterates through each word
      showme << if word.length < 2 # shovels single letter words into the empty array showme
                  word + 'way' # resolves 'I' -> iway
                elsif vowels.include?(word[0]) # if the word starts with a vowel (index 0)
                  word + 'way'
                elsif consonants.include?(word[0]) && consonants.include?(word[1]) && consonants.include?(word[2]) # additional parameters
                  word[3..-1] + word[0..2] + 'ay'
                elsif consonants.include?(word[0]) && consonants.include?(word[1])
                  word[2..-1] + word[0..1] + 'ay'
                elsif consonants.include?(word[0])
                  word[1..-1] + word[0] + 'ay'
                else
                  word + '?'
                end
    end
    showme.join(', ').gsub(/,/, '') # puts the newly formed words back together that have been put in the array
  end
end
