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

  def update
    @puja = Puja.find(params[:id])

    if @puja.update(puja_params)
      redirect_to pujas_path
    else
      render 'edit'
    end
  end

  def destroy
    @puja = Puja.find(params[:id])
    @puja.destroy

    redirect_to pujas_path
  end

  private
    def puja_params
      params.require(:puja).permit(:name, :description, :benefit, :suggested_offering)
    end

end
