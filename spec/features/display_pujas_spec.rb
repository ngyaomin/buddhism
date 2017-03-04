require 'rails_helper'

RSpec.feature "displaying pujas" do
  scenario "should allow display puja" do

  visit pujas_path

  expect(page).to have_content("a")
  expect(page).to have_content("b")
  expect(page).to have_content("c")

  end

end
