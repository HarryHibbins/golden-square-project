require "diary"

RSpec.describe Diary do
    it "sets and contents and reads" do 
        diary = Diary.new("MY CONTENTS")
        expect(diary.read).to eq "MY CONTENTS"
    end

end
