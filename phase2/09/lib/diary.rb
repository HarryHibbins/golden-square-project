class Diary
    def initialize
        @entries = []
        @contacts = []
    end

    def add(entry)
        @entries << entry
    end

    def add_contact(contact)
        @contacts << contact
    end

    def show_all_contacts
        return @contacts
    end

    def show_all
        if @contacts.count >= 1
            return @entries + @contacts
        else
            return @entries
        end
    end

    def show_entry_based_on_time(wpm, minutes)
        fail "invalid paramater" if wpm < 1 || minutes < 1
        fail "no entries" if @entries.count < 1
        return readable_entries(wpm, minutes).first
    end

    private

    def readable_entries(wpm, minutes)
        return @entries.filter do |entry|
             entry.reading_time(wpm) <= minutes
        end
    end
end

