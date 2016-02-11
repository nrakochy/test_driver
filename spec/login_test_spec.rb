require 'spec_helper'

feature 'Login' do
  before :all do 
    login
  end

  after :all do
    clear_session 
  end

  scenario "successfully", js: true do
    resolve_ajax
    expect(page).to have_css('#QueryBar')
  end
end
