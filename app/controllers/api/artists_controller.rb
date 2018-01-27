class Api::ArtistsController < ApplicationController

  skip_before_action :verify_authenticity_token
  before_action :set_artist, only: [:show]

  def index
    render status: 200, json: {
      artists: Artist.all
    }.to_json
  end

  def show
    artist = Artist.find(params[:id])
    render status: 200, json: artist.as_json(include: :songs)
  end

  def destroy
    artist = Artist.find(params[:id])
    artist.destroy

    render status: 200, json: {
      message: "Artist successfully deleted"
    }.to_json
  end

  def set_artist
    artist = Artist.find(params[:id])
    render status: 200, json: artist
  end

end
