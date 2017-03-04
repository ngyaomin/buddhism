class PujasController < ApplicationController
  def new
    @post = Post.new
  end

  def index
    @pujas = Puja.all
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
