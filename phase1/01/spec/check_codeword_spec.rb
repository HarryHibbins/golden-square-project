require 'check_codeword'

RSpec.describe "check_codeword method" do
    it "Given the word 'horse' return: Correct! Come in." do
        result = check_codeword("horse")
        expect(result).to eq "Correct! Come in."
    end 

    it "Given the word 'hello there' return: Close, but nope." do
        result = check_codeword("hello there")
        expect(result).to eq "Close, but nope."
    end

    it "Given the word 'hello' return: WRONG!" do
        result = check_codeword("hello")
        expect(result).to eq "WRONG!"
    end

end 
