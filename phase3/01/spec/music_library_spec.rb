require "music_library"

RSpec.describe MusicLibrary do

    context "initally" do 
        it "has an empty list of tracks" do
            music_library = MusicLibrary.new()
            expect(music_library.all).to eq []
        end
    end

    describe "#add" do
        it "should show all added tracks" do
            music_library = MusicLibrary.new()
            track1 = double :track
            track2 = double :track
            music_library.add(track1)
            music_library.add(track2)
            expect(music_library.all()).to eq [track1, track2]  
        end
    end

    describe "#search" do
        context "with no tracks added" do 
            it "returns an empty list" do
                music_library = MusicLibrary.new()
                expect(music_library.search("Drake")).to eq []
            end
        end

        context "given a specific song in search" do
            it "should return that song" do
                music_library = MusicLibrary.new()
                track = double :track
                expect(track).to receive(:matches?).with("test"). and_return(true)
                track2 = double :track, matches?: false
                music_library.add(track)
                music_library.add(track2)
                expect(music_library.search("test")).to eq [track]

            end
        end
    end
end