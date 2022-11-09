require 'gratitudes'

RSpec.describe Gratitudes do
    it "Adds an array of words to the end of a string" do
        gratitudes = Gratitudes.new()
        gratitudes.add("Pizza")
        gratitudes.add("Football")
        result = gratitudes.format()
        expect(result).to eq "Be grateful for: Pizza, Football"
    end
end
