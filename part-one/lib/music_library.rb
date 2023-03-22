class MusicLibrary
  def initialize
    @tracks = []
  end

  def add(track) # track is an instance of Track
    @tracks << track
    # Track gets added to the library
    # Returns nothing
  end

  def all
    @tracks
    # Returns a list of track objects
  end

  def search(keyword) # keyword is a string
    matches = []
    @tracks.each do |track|
      if track.matches?(keyword)
        matches << track
      end
    end
    matches
    # Returns a list of tracks that match the keyword
  end
end
