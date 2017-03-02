require 'rails_helper'

RSpec.describe Puja, type: :model do

  it "orders by   name" do
    onetest = Puja.create!(name: "one", description: "one description", benefit: "one benefit", suggested_offering: "56")
    twotest = Puja.create!(name: "two", description: "two description", benefit: "two benefit", suggested_offering: "96")

    expect(Puja.order(:name)).to eq([onetest, twotest])
  end



end
