require 'string_builder'

RSpec.describe StringBuilder do
    it "Add the strings: 'hello' and 'there' together" do
        string_builder = StringBuilder.new
        string_builder.add("hello ")
        string_builder.add("there")
        result = string_builder.output
        expect(result).to eq "hello there"
    end

    it "Add the strings: 'hello' and 'there' together 
        and output the length" do
        string_builder = StringBuilder.new
        string_builder.add("hello ")
        string_builder.add("there")
        result = string_builder.size()
        expect(result).to eq 11
    end
end
