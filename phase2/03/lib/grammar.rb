def grammar_check(text)
    letters = text.split("")
    first_letter = letters[0]

    p letters
    last_letter = letters[letters.count-1]

    punctuation = [".","!","?"]

    p last_letter
    if first_letter == first_letter.upcase && punctuation.include?(last_letter)
        return true
    else
        return false
    end 

    

end 

