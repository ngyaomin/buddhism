require 'test_helper'

class PujasControllerTest < ActionDispatch::IntegrationTest

  test "can create a puja" do
      assert_difference('Puja.count') do
      post pujas_url, params: { puja: { name: 'Puja Name', description: 'Puja description', benefit: 'puja benefit', suggested_offering: 'Puja Benefit' } }
    end
  end

  test "can show a puja" do
    puja = pujas(:one)
    get puja_url(puja)
    assert_response :success
  end

  test "can delete a puja" do
      puja = pujas(:one)
      assert_difference('Puja.count', -1) do
        delete puja_url(puja)
      end
    end

  test "can update a puja" do
    puja = pujas(:one)
    patch puja_url(puja), params: { puja: { name: 'Puja Name', description: 'Puja Description', benefit: 'Puja Benefit', suggested_offering: 100 } }

    assert_redirected_to pujas_url
    puja.reload
    assert_equal "Puja Name", puja.name
    assert_equal "Puja Description", puja.description
    assert_equal "Puja Benefit", puja.benefit
    assert_equal 100, puja.suggested_offering
  end


end
