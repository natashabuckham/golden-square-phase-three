require 'cat_facts'

RSpec.describe CatFacts do
  it "returns a cat fact in a string" do
    requester_dbl = double :requester
    expect(requester_dbl).to receive(:get).with(URI("https://catfact.ninja/fact")).and_return('{"fact":"A cat\'s normal pulse is 140-240 beats per minute, with an average of 195.","length":73}')
    catfacts = CatFacts.new(requester_dbl)
    expect(catfacts.provide).to eq "Cat fact: A cat's normal pulse is 140-240 beats per minute, with an average of 195."
  end
end
