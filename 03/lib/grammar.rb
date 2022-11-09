def grammar_check(text)
    letters = text.split("")
    first_letter = letters[0]
    last_letter = letters[letters.count]

    punctuation = [".","!","?"]

    if first_letter == first_letter.upcase && punctuation.include?(last_letter)
        return true
    else
        return false
    end 

    

end 