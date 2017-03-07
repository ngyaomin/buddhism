require 'test_helper'

class PicturesControllerTest < ActionDispatch::IntegrationTest
  test "can create a picture" do
      assert_difference('Picture.count') do
      post pictures_url, params: { picture: { title: 'Picture Title', description: 'Picture Description', picture_image: 'this string will be an url' } }
    end
  end


  test "can show a puja" do
    picture = pictures(:one)
    get picture_url(picture)
    assert_response :success
  end

end
