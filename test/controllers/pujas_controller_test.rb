require 'test_helper'

class PujasControllerTest < ActionDispatch::IntegrationTest

  test "can create a puja" do
      assert_difference('Puja.count') do
      post pujas_url, params: { puja: { name: 'Puja Name', description: 'Puja description', benefit: 'puja benefit', suggested_offering: 'Puja Benefit' } }
    end
  end


end
