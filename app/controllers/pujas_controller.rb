class PujasController < ApplicationController
  def new

  end

  def show
    @puja = Puja.find(params[:id])
  end



  def create
    @puja = Puja.new(puja_params)
    @puja.save
    redirect_to @puja
  end

  private
    def puja_params
      params.require(:puja).permit(:name, :description, :benefit, :suggested_offering)
    end

end
