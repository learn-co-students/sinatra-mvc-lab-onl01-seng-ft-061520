class PigLatinizer
 

    def piglatinize(string)
    #     string = string.downcase
        string.split(" ").map{ |word| piglatinize_word(word)}.join(" ")

    end

    def piglatinize_word(word)
        
        if vowel?(word[0])
            word + "way"
        else
            vowel = word.index(/[aAeEiIoOuU]/)
            to_be_moved = word.slice(0..vowel-1)
            remainder = word.slice(vowel..word.length)
            remainder + to_be_moved + "ay"
        end
    end

    def vowel?(letter)
        letter.match(/[aAeEiIoOuU]/)
    end
    


end
