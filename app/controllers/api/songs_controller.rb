class Api::SongsController < ApplicationController

  def index
    artist = Artist.find(params[:id])
    song = artist.songs

    render status: 200, json: {
      song: song
    }.to_json
  end

end
