class PujasController < ApplicationController
  def puja_action
    Puja.create(:name => "pujatest",
                :description => "pujadescription",
                :benefit => "pujabenefit",
                :suggested_offering => "100")
  end

  require 'rails_helper'

  RSpec.describe PujasController, type: :controller do
    describe "#puja_action" do
     it "creates a puja" do
       expect {
         get :puja_action
       }.to change(Puja, :count).by(1)
     end
   end
  end


end
