class ArtistsController < ApplicationController
  before_action :set_artist, only: [:edit, :update, :show]
  def index
    @artists = Artist.all
  end

  def new
    @artist = Artist.new
    @artists = Artist.all
  end

  def create
    @artist = Artist.create(artist_params)
    redirect_to @artist
  end

  def edit
  end

  def update
    @artist.update(artist_params)
    redirect_to @artist
  end

  def show
  end

  private
  def artist_params
    params.require(:artist).permit(:name, :age, :bio)
  end

  def set_artist
    @artist = Artist.find(params[:id])
  end
end
