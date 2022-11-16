class DiaryEntry
    def initialize(text)
        @text = text
    end

    def reading_time(wpm)

        return count_words / wpm

    end

    def count_words
        fail "there must be 1 or more words" unless @text.split().count > 0

        no_words = @text.count(" ") + 1
        return no_words
    end
end