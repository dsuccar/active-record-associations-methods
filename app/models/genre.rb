class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    Song.all.count
  end

  def artist_count
    self.artists.length
  end

  def all_artist_names
    self.artists.map{|m| m.name}
  end
end







  # has_many :songs
  # has_many :artists, through: :songs
