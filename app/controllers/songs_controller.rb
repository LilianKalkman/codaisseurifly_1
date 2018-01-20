class SongsController < ApplicationController
 # before_action :set_artist

  def index
    @song = @artist.songs
  end

  def show
  end

  def new
    @song = Song.new
  end

  def create
    @song = @artist.songs
    @song = @song.new(song_params)

    if @song.save
      redirect_to @artists
    else
      render :new_artist_song_path
    end
  end

  def song_params
    params.require(:song).permit(:name)
  end

  # def set_artist
  #   @artist = Artist.find(params[:artist_id])
  # end

end
