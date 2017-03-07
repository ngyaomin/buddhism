class PicturesController < ApplicationController

  def create
    @picture = Picture.new(picture_params)

    @picture.save
    redirect_to @picture
  end

  private
    def picture_params
      params.require(:picture).permit(:title, :description, :picture_image)
    end

end
