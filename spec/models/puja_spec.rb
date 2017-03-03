require 'spec_helper'

describe Puja do
  it 'create new puja' do
    puja = Puja.new
    puja.name.should == 'pujatest'
    puja.description.should == 'pujadescription'
    puja.benefit.should == 'pujabenefit'
    puja.suggested_offering.should == '100'
  end

end
