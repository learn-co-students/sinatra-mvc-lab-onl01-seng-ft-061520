class PigLatinizer 
  def piglatinize(input)
    input.split(" ").length == 1 ? piglatinize_text(input) : piglatinize_sentence(input)
  end 
  
  private 
  
  def constant?(character)
    !character.match(/[aAeEiIoOuU]/)
  end 
  
  def piglatinize_text(text)
    if !constant?(text[0])
      text = text + "w"
    elsif constant?(text[0]) && constant?(text[1]) && constant?(text[2])
      text = text.slice(3..-1) + text.slice(0,3)
    elsif constant?(text[0]) && constant?(text[1])
      text = text.slice(2..-1) + text.slice(0,2)
    else 
      text = text.slice(1..-1) + text.slice(0)
    end 
    text << "ay" 
  end 
  
  def piglatinize_sentence(sentence)
    sentence.split.collect {|text| piglatinize_text(text) }.join(" ")
  end 
end 