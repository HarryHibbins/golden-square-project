require "track"

RSpec.describe Track do
    it "returns true if song name or artist matches" do
        track = Track.new("song name", "artist")
        expect(track.matches?("art")).to eq true
    end
end
