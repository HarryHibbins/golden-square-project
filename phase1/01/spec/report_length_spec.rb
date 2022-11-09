require 'report_length'

RSpec.describe "report_length method" do
    it "Given the word 'hello' return: This string was 5 characters long." do
        result = report_length("hello")
        expect(result).to eq "This string was 5 characters long."
    end 

end 
