class ArtistInstrumentsController < ApplicationController
  before_action :set_artist_instrument, only: [ :show]

  def new
    @artist_instrument = ArtistInstrument.new
    @artists = Artist.all
    @instruments = Instrument.all
    render :new
  end

  def create
    @artist_instrument = ArtistInstrument.new(artist_instrument_params)
    if @artist_instrument.save
      redirect_to artist_path(@artist_instrument.artist)
    else
      @artist_instrument = ArtistInstrument.new
      @artists = Artist.all
      @instruments = Instrument.all
      flash[:errors] = "That instrument is already associated with that Artist."
      render :new
    end
  end

  def show 
  end

  private
  def artist_instrument_params
    params.require(:artist_instrument).permit(:artist_id, :instrument_id)
  end

  def set_artist_instrument
    @artist_instrument = ArtistInstrument.find(params[:id])
  end
end
