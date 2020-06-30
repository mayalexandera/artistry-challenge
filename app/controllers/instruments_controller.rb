class InstrumentsController < ApplicationController
    before_action :set_instrument, only: [:edit, :update, :show]

  def index
    @instruments = Instrument.all
  end

  def new
    @instrument = Instrument.new
    @instruments = Instrument.all
  end

  def create
    @instrument = Instrument.create(instrument_params)
    redirect_to @instrument
  end

  def edit
  end

  def update
    @instrument.update(instrument_params)
    redirect_to @instrument
  end

  def show
  end

  private
  def instrument_params
    params.require(:instrument).permit(:name, :classification)
  end

  def set_instrument
    @instrument = Instrument.find(params[:id])
  end
end
