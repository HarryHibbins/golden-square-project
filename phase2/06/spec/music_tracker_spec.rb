require 'music_tracker'

RSpec.describe MusicTracker do 
    context 'given no songs' do
        it 'returns an empty array' do
            music_tracker = MusicTracker.new()
            result = music_tracker.view_songs()
            expect(result).to eq []
        end
    end


   context 'given one song' do
       it 'returns the song list, of one song' do
            music_tracker = MusicTracker.new()
            music_tracker.add("song name")
            result = music_tracker.view_songs()
            expect(result).to eq ["song name"]
        end
    end

    context 'given three songs' do 
        it 'returns the song list, containing all three songs' do
            music_tracker = MusicTracker.new()
            music_tracker.add("song 1")
            music_tracker.add("song 2")
            music_tracker.add("song 3")
            result = music_tracker.view_songs
            expect(result).to eq ["song 1" , "song 2" , "song 3"]
        end
    end


end
        
