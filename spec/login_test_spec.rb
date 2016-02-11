require 'spec_helper'

feature 'Login' do
  scenario "successfully" do
    it 'logs into the URL under test', :js => true do
      login
      expect(page).to have_css('.header-logged-in')
    end
  end
end
