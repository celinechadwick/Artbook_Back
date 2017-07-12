class ArtworksController < ApplicationController
  before_action :authenticate_token

  def index
      artworks = User.find(params[:user_id]).artworks

      render :json => artworks, status: 200
  end

  def show
      render :json => Artwork.find(params[:id]), status: 200
  end


  def update
      artwork_updated = Artwork.find(params[:id]).update_attributes(artwork_params)

      if artwork_updated
          head 200
      else
          render :json => { error: "Update failed for artwork" }, status: 400
      end
  end

  def destroy
      artwork_destroyed = Artwork.find(params[:id]).destroy

      if artwork_destroyed
          head 200
      else
          render :json => { error: "Destroy failed for artwork" }, status: 400
      end
  end


def create
  artwork = User
  .find(params[:user_id])
  .artworks
  .create(artwork_params)

  render :json => artwork, status: 201
end


  private

  def artwork_params
      params.require(:artwork).permit(:title, :artist, :year, :image, :category)
  end
end
