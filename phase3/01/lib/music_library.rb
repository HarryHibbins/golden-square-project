class MusicLibrary
    def initialize
      @tracks = []
    end
  
    def add(track) 
        @tracks << track
    end
  
    def all
        return @tracks
    end
    
    def search(keyword) 
        # relevant_tracks = []
        # @tracks.each do |track|
        #     if track.matches?(keyword)
        #         relevant_tracks << track
        #     end
        # end
        # return relevant_tracks

        return @tracks.select do |track|
            track.matches?(keyword)
        end
    end
  end