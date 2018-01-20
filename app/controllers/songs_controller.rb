class SongsController < ApplicationController
 before_action :set_artist

  def index
    @song = @artist.songs
  end

  # def new
  #   @song = @artist.songs.build
  # end

  # def create
  #   @song = @artist.songs.build(song_params)
  #   @song.artist = Artist.find(params[:artist_id])
  #
  #   if @song.save
  #     redirect_to @song.artist
  #   else
  #     render 'new'
  #   end
  # end
  #
  # def song_params
  #   params
  #   .require(:song)
  #   .permit(:name)
  # end

  def set_artist
    @artist = Artist.find(params[:artist_id])
  end

end
