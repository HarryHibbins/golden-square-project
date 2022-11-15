
class DiaryEntry
    def initialize(title, contents) # title, contents are strings
      @title = title
      @contents = contents
      @counter = -1
    end
  
    def title
      return @title
    end
  
    def contents
      return @contents
    end
  
    def count_words
        return 0 if @contents.empty?
        return @contents.count(" ") + 1 #counting spaces and adding 1 to get word count
    end
  
    def reading_time(wpm) 
      return (count_words.to_f / wpm).ceil
    end
  
    def reading_chunk(wpm, minutes) 

      chunk_length = wpm * minutes
      words = contents().split 

      @counter +=1
      previous_words_read = @counter * chunk_length

      return words[previous_words_read...chunk_length + previous_words_read].join(" ")
    end
end