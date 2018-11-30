def caesar_encode(string,offset)
  # code
  alphabet = [*("a".."z")]
  alphabet_cap = [*("A".."Z")]

  string.split("").collect do |character|
    if character =~ /[a-z]/
      index = alphabet.index(character)
      alphabet[((index + offset)%26)]
    elsif character =~ /[A-Z]/
      cap_index = alphabet_cap.index(character)
      alphabet_cap[((cap_index + offset)%26)]
    else
      character = character 
    end
  end.join("")
end

def caesar_decode(string,offset)
  # code
  alphabet = [*("a".."z")]
  alphabet_cap = [*("A".."Z")]

  string.split("").collect do |character|
    if character =~ /[a-z]/
      index = alphabet.index(character)
      alphabet[((index - offset)%26)]
    elsif character =~ /[A-Z]/
      cap_index = alphabet_cap.index(character)
      alphabet_cap[((cap_index - offset)%26)]
    else
      character = character 
    end
  end.join("")
end
