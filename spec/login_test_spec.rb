require 'spec_helper'

feature 'Login' do
  scenario "successfully" do
    login
    expect(page).to have_css('.header-logged-in')
  end
end
