class SongsController < ApplicationController
 # before_action :set_artist

  def index
    @song = @artist.songs
  end

  def show
    @song = @artist.songs
  end

  def new
    @song = Song.new
  end

  def create
    @song = @song.new(song_params)

    if @song.save
    redirect_to artist_path
    else
    render 'new'
    end
  end

private

  def song_params
    params.require(:song).permit(:name)
  end

  # def set_artist
  #   @artist = Artist.find(params[:artist_id])
  # end

end
