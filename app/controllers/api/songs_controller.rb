class Api::SongsController < ApplicationController
 skip_before_action :verify_authenticity_token
 before_action :set_artist


  def index
    songs = Song.all
    render status: 200, json: songs
  end

  # def show
  #   song = Song.find(params[:id])
  #   render status: 200, json: song.as_json
  # end

  def create
    song = @artist.songs.create(song_params)

    if song.save
      render status: 200, json: song
    else
      render status: 422, json: {
        errors: song.errors
      }.to_json
    end
  end

  def destroy
    song = Song.find(params[:id])
    song.destroy

    render status: 200, json: {
      message: "Song successfully deleted"
    }.to_json
  end


  private

  def song_params
    params.require(:song).permit(:name)
  end

  def set_artist
    @artist = Artist.find(params[:artist_id])
  end

end
