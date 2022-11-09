# A method that checks that a sentence starts with a capital letter and ends with 
# a suitable sentence ending punctuation mark
require "grammar"


RSpec.describe "grammar_check method" do 
    context "given a sentence with no capital letter at the start" do
        it "returns false" do
        result = grammar_check("hello")
        expect(result).to eq false
        end
    end

    context "given a sentence with a capital letter at the start but no punctuation" do
        it "returns false" do
        result = grammar_check("Hello")
        expect(result).to eq false
        end
    end

    context "given a sentence with a capital letter at the start and punctuation" do
        it "returns true" do
        result = grammar_check("Hello.")
        expect(result).to eq false
        end
    end


    context "given a sentence with a capital letter at the start and punctuation" do
        it "returns true" do
        result = grammar_check("Hello, what is your name?")
        expect(result).to eq false
        end
    end



end