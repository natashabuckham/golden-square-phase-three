require 'track'

RSpec.describe Track do
  it "constructs" do
    track = Track.new("title", "artist")
  end

  it "returns true if keyword matches title or artist" do
    track = Track.new("title", "match")
    track_2 = Track.new("match", "artist")
    track_3 = Track.new("match", "match")
    expect(track.matches?("match")).to eq true
    expect(track_2.matches?("match")).to eq true
    expect(track_3.matches?("match")).to eq true
  end

  it "returns false if keyword doesn't match title or artist" do
    track = Track.new("title", "artist")
    expect(track.matches?("match")).to eq false
  end
end
