require 'rails_helper'
require 'spec_helper'

RSpec.describe Puja, type: :model do
  before(:all)do
    @puja = Puja.new(name:'puja name', description:'puja description',
    benefit:'puja benefit', suggested_offering:100)
  end
    it "should have a valid puja name" do
      expect(@puja.name).to eq("puja name")
    end

    it "should have a valid puja description" do
      expect(@puja.description).to eq("puja description")
    end

    it "should have a valid puja benefit" do
      expect(@puja.benefit).to eq("puja benefit")
    end

    it "should have a valid puja benefit" do
      expect(@puja.benefit).to eq("puja benefit")
    end



end
  # describe Puja do
  #   it "should add one puja" do
  #     puja = Puja.new
  #     puja.save
  #   end
  # end
