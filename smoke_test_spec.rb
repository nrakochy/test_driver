require_relative 'spec/spec_helper'

feature "Web browser imitation works" do
  scenario 'traverses the Interwebs', :js => true do
    visit "" 
    expect(page).to have_css('.version_info')
  end
end
