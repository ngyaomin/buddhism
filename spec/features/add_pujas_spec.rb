require 'rails_helper'

RSpec.feature "adding pujas" do

  scenario "should allow to add a puja" do

    visit new_puja_path

    fill_in "Name" , with: "Puja Name"
    fill_in "Description" , with: "Puja Description"
    fill_in "Benefit" , with: "Puja Benefit"
    # fill_in "suggested_offering", with: "100"

    click_on("Save Puja")


    expect(page).to have_content("Puja Name")
    expect(page).to have_content("Puja Description")
    expect(page).to have_content("Puja Benefit")
    # expect(page).to have_content 100

  end
end
