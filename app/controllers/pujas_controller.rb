class PujasController < ApplicationController

  def create
      render plain: params[:puja].inspect
  end


end
