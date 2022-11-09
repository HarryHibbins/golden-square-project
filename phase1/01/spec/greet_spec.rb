require 'greet'

RSpec.describe "greet method" do
  it "Given a name, return a string saying hello to them" do
    result = greet("Harry")
    expect(result).to eq "Hello, Harry!"
  end
end