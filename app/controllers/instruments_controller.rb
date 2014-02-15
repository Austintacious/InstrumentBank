class InstrumentsController < ApplicationController
  before_action :authenticate_user!
  respond_to :html, :json, :js

  def new
    @instrument = Instrument.new
  end

  def create
    @instrument = Instrument.new(instrument_params)
    @instrument.bank_id = current_user.bank.id

    respond_to do |format|
      if @instrument.save
        format.html { redirect_to root_path, notice: 'Your instrument was successfully added!' }
        format.json { render json: @instrument }
      else
        format.html { redirect_to :back, notice: 'There was a problem saving your instrument. Please try again.' }
        format.json { head :no_content }
      end
    end
  end

  def show 
    set_instrument
  end

  def edit
    set_instrument
  end

  def update
    set_instrument
    @instrument.update_attributes!(instrument_params)
    redirect_to instrument_path(@instrument)
  end

  private

  def set_instrument
    @instrument = Instrument.find(params[:id])
  end

  def instrument_params
    params.require(:instrument).permit(:type, :age, :organization, :borrower_first_name, :borrower_last_name, :borrower_email, :story, :size)
  end

end
