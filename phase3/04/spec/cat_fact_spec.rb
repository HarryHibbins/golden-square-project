require 'cat_fact'

RSpec.describe CatFacts do
    it "returns a cat fact" do
        fake_requester = double(:fake_requester)
        allow(fake_requester).to receive(:get).with(URI("https://catfact.ninja/fact")).and_return('{"fact":"A cat will tremble or shiver when it is extreme pain.","length":53}')
        cat_fact = CatFacts.new(fake_requester)
        expect(cat_fact.provide).to eq "Cat fact: A cat will tremble or shiver when it is extreme pain."

    end
end