require 'spec_helper'

describe "Web browser imitation works" do
  it 'traverses the Interwebs', :js => true do
    visit "/"
    expect(page).to have_css('.octicon')
  end
end
