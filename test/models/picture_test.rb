class PictureTest < ActiveSupport::TestCase
require 'spec_helper'


  test "should not save picture that is empty" do
    picture = Picture.new
    assert_not picture.save
  end

end
