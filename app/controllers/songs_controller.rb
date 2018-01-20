class SongsController < ApplicationController
 before_action :set_artist

  def index
    @song = @artist.songs
  end

  def show
    @song = @artist.songs
  end

  def new
    @song = @artist.songs.build
  end

  def create
    @song = @artist.songs.create(song_params)

    if @song.save
    redirect_to artist_songs_path, notice: "Song Added"
    else
    render :new_artist_song_path
    end
  end

  def destroy
    @song = Song.find(params[:id])
    @song.destroy
    redirect_to artist_songs_path
  end

private

  def song_params
    params.require(:song).permit(:name)
  end

  def set_artist
    @artist = Artist.find(params[:artist_id])
  end

end
