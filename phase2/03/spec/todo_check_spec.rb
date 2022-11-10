require "todo_check"

# A method called todo_check that takes a text as an argument
# and returns true if it contains the string TODO.

RSpec.describe "todo_check method" do
  context "given a string that has '#TODO' at the begining" do
    it "returns true" do
      result = todo_check("#TODO, walk the dog")
      expect(result).to eq true
    end
  end

  context "given a string that has '#TODO' at the end" do
    it "returns true" do
      result = todo_check("make sure to take the bin out today, #TODO")
      expect(result).to eq true
    end
  end

  context "given a string that does not contain: #TODO" do
    it "returns false if it includes TODO" do
      result = todo_check("hello")
      expect(result).to eq false
    end
  end


end
