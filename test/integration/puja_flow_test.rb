
require 'test_helper'

class PujaFlowTest < ActionDispatch::IntegrationTest
  test "home page is Lineages#index" do
      get lineages_url
      assert_select "h1", "Lineages#index"
    end





end
