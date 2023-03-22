require 'music_library'

RSpec.describe MusicLibrary do
  it "adds tracks and returns a list of them" do
    library = MusicLibrary.new
    track = double :track
    library.add(track)
    expect(library.all).to eq [track]
  end

  it "returns a list of tracks that match a keyword" do
    library = MusicLibrary.new
    track_1 = double :track, matches?: false
    track_2 = double :track, matches?: true
    track_3 = double :track, matches?: true
    library.add(track_1)
    library.add(track_2)
    library.add(track_3)
    expect(library.search("match")).to eq [track_2, track_3]
  end
end
