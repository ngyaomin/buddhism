require 'test_helper'

class PictureFlowTest < ActionDispatch::IntegrationTest

  test "create and display a picture" do
     get "/pictures/new"
     assert_response :success

     post "/pictures",
       params: { picture: { title: 'Picture Title', description: 'Picture Description', picture_image: 'this string will be an url' } }
     assert_response :redirect
     follow_redirect!
     assert_response :success
     assert_select "p", "Title: Picture Title"
   end

end
