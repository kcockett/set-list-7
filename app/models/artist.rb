class Artist < ApplicationRecord
  has_many :songs
  has_many :playlists, through: :songs

  def average_song_length
    self.songs.average(:length)
  end
end
