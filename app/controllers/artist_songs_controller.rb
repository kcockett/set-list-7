class ArtistSongsController < ApplicationController
  def index
    @artist = Artist.find(params[:artist_id])
    @songs = @artist.songs
  end
  def new
    @artist = Artist.find(params[:artist_id])
    @song = Song.new
  end
end
