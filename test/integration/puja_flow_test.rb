
require 'test_helper'

class PujaFlowTest < ActionDispatch::IntegrationTest
  # test "home page is Lineages#index" do
  #     get lineages_url
  #     assert_select "h1", "Lineages#index"
  #   end

    test "create and display a puja" do
       get "/pujas/new"
       assert_response :success

       post "/pujas",
         params: { puja: { name: 'Puja Name', description: 'Puja description', benefit: 'puja benefit', suggested_offering: 100 } }
       assert_response :redirect
       follow_redirect!
       assert_response :success
       assert_select "p", "Name: Puja Name"
     end
end
