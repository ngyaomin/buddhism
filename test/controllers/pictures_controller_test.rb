require 'test_helper'

class PicturesControllerTest < ActionDispatch::IntegrationTest
  test "can create a picture" do
      assert_difference('Picture.count') do
      post pictures_url, params: { picture: { title: 'Picture Title', description: 'Picture Description', picture_image: 'this string will be an url' } }
    end
  end
end
