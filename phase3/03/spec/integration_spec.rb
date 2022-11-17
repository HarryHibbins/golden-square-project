require "diary"
require "secret_diary"

RSpec.describe "integration" do
    context "initally" do 
        it "does not read the diary because it is locked" do
            diary = Diary.new("MY CONTENTS")
            secret_diary = SecretDiary.new(diary)
            expect{secret_diary.read}.to raise_error "Go away!"
        end
    end

    context "when it is unlocked" do
        it "reads the diary contents" do
            diary = Diary.new("MY CONTENTS")
            secret_diary = SecretDiary.new(diary)
            secret_diary.unlock()
            expect(secret_diary.read).to eq "MY CONTENTS"
        end
    end

    context "when it is re locked" do
        it "does not read the diary because it is locked" do
            diary = Diary.new("MY CONTENTS")
            secret_diary = SecretDiary.new(diary)
            secret_diary.unlock
            secret_diary.lock
            expect{secret_diary.read}.to raise_error "Go away!"
        end
    end 
end
