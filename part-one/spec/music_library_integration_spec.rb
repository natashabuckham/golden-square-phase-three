require 'music_library'
require 'track'

RSpec.describe 'music library integration' do
  it "adds tracks and lists them" do
    library = MusicLibrary.new
    track = Track.new("title", "artist")
    library.add(track)
    expect(library.all).to eq [track]
  end

  it "returns a list of tracks that match a keyword" do
    library = MusicLibrary.new
    track_1 = Track.new("title", "artist")
    track_2 = Track.new("match", "artist_2")
    track_3 = Track.new("title_3", "match")
    library.add(track_1)
    library.add(track_2)
    library.add(track_3)
    expect(library.search("match")).to eq [track_2, track_3]
  end
end
