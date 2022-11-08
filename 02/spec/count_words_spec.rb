# Design

# A method called count_words that takes a string as
# an argument and returns the number of words in that string.
require "count_words"


RSpec.describe "count_words method" do 
    context "given a string" do
        it "returns the number of words in the string" do
            result = count_words("hello")
            expect(result).to eq 1
        end
    end

    context "given a string with 3 words" do
        it "returns 3" do
            result = count_words("one two three")
            expect(result).to eq 3
        end
    end

    context "given a string with 0 words" do
        it "returns 3" do
            result = count_words("")
            expect(result).to eq 0
        end
    end
end