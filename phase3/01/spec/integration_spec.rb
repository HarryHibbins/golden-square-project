require "music_library"
require "track"

RSpec.describe "integration" do
    context "given a list of tracks" do
        it "should return them all" do
            music_library = MusicLibrary.new()
            track1 = Track.new("song name", "artist name")
            track2 = Track.new("song name 2", "artist name 2")
            music_library.add(track1)
            music_library.add(track2)
            expect(music_library.all()).to eq [track1, track2]
        end
    end

    it "searches tracks" do
        music_library = MusicLibrary.new()
        track1 = Track.new("song name", "Drake")
        track2 = Track.new("song name 2", "artist name 2")
        music_library.add(track1)
        music_library.add(track2)
        expect(music_library.search("Drake")).to eq [track1]
    end
end