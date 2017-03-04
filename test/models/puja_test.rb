class PujaTest < ActiveSupport::TestCase
require 'test_helper'


test "should not save puja that is empty" do
  puja = Puja.new
  assert_not puja.save
end

end
