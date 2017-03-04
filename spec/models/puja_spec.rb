require 'spec_helper'

describe Puja do
  it "has a valid puja" do
    FactoryGirl.create(:puja).should be_valid
  end

end

describe Puja do
  it "should add one puja" do
    puja = Puja.new
    puja.save
  end
end
