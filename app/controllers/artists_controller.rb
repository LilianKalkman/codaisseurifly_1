class ArtistsController < ApplicationController

  def index
    @artists = Artist.all
  end

  def show
    @artist = Artist.find(params[:id])
    @photos = @artist.photos
    @song = @artist.songs
    @newsong = @artist.songs.new
  end

  def destroy
    @artist = Artist.find(params[:id])
    @artist.destroy
    redirect_to artists_path, notice: "Artist Deleted!"
  end

end
