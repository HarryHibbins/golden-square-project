class MusicTracker
    def initialize()
        @song_list = []
    end

    def add(song)
        @song_list.push(song)
    end

    def view_songs()
        @song_list.each do |song|
            puts song
        end
        return @song_list
    end

end