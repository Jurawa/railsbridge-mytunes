class Api::ArtistsController < ApplicationController
  protect_from_forgery with: :null_session
  respond_to :json

  def index
    respond_with Artist.all.as_json(include: :tracks)
  end

  def create
    render :json => Artist.create(artist_params)
  end


  private

  def artist_params
    params.require(:artist).permit(:name)
  end
end
