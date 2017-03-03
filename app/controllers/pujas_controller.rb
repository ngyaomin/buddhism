class PujasController < ApplicationController
  def new
  end

  def create
  @puja = Puja.new(params[:puja])

  @puja.save
  redirect_to @puja
  end





end
