require "diary"

RSpec.describe Diary do
    context "initally" do
        it "has an empty list" do
            diary = Diary.new()
            expect(diary.show_all).to eq []
            expect{diary.show_entry_based_on_time(10,10)}.to raise_error "no entries"

        end
    end

    context "given a wpm or time < 1" do
        it "fails: invalid paramater" do
            diary = Diary.new()
            expect{diary.show_entry_based_on_time(0,1)}.to raise_error "invalid paramater"
        end
    end
end