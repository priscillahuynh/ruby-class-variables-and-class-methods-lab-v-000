class Song
  attr_accessor :name, :artist, :genre
  @@count = 0
  @@genres=[]
  @@artists=[]

  def initialize(name,artist,genre)
    @name=name
    @artist=artist
    @genre=genre
    @@count+=1
    @@genres<<genre
    @@artists<<artist
    # @@genres+=1
  end

  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    genre_count={}
    @@genres.each {|genre|
      if genre_count[genre]
        genre_count[genre]+=1
      else
        genre_count[genre]=1

    }
    @@genres
  end

  def self.artist_count
    @@artists
  end
end
