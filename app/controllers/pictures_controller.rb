class PicturesController < ApplicationController

  def index
   @pictures = Picture.all.order("created_at DESC")
  end

  def show
   @picture = Picture.find(params[:id])
 end

  def create
    @picture = Picture.new(picture_params)

    @picture.save
    redirect_to @picture
  end

  def show
    @picture = Picture.find(params[:id])
  end

  def update
    @picture = Picture.find(params[:id])

    if @picture.update(picture_params)
      redirect_to pictures_path
    else
      render 'edit'
    end
  end

  def edit
    @picture = Picture.find(params[:id])
  end

  def destroy
    @picture = Picture.find(params[:id])
    @picture.destroy

    redirect_to pictures_path
  end

  private
    def picture_params
      params.require(:picture).permit(:title, :description, :picture_image)
    end

end
