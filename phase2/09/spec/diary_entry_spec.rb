require "diary_entry"

RSpec.describe DiaryEntry do
    context "given 0 words" do
        it "should fail: there must be 1 or more words" do
            diary_entry = DiaryEntry.new("")
            expect{diary_entry.reading_time(10)}.to raise_error "there must be 1 or more words"
        end
    end

    context "given 10 words and 10 wpm" do
        it "return 1" do
            diary_entry = DiaryEntry.new("1 2 3 4 5 6 7 8 9 10")
            expect(diary_entry.reading_time(10)).to eq 1
        end
    end
end