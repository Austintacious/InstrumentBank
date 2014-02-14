class BanksController < ApplicationController
  respond_to :html, :json, :js

  def index
    @bank = Bank.all
    @user = current_user
  end

  def new
    @bank = Bank.new
  end

  def create
    @bank = Bank.new(bank_params)
    @bank.user_id = current_user.id

    respond_to do |format|
      if @bank.save
        format.html { redirect_to root_path, notice: 'Your bank was successfully created!' }
        format.json { render json: @bank }
      else
        format.html { redirect_to :back, notice: 'There was a problem saving your bank. Please try again.' }
        format.json { head :no_content }
      end
    end
  end

  private

  def bank_params
    params.require(:bank).permit(:title)
  end

end
