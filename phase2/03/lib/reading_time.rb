
def reading_time (text) # one, two
    word_count =  text.split.count
    wpm = 200

    return (word_count /wpm.to_f).ceil
end

