class PujasController < ApplicationController

  def index
    @pujas = Puja.all
  end

  def create
      render plain: params[:puja].inspect
  end


end
