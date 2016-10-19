require 'rails_helper'

describe 'Search' do
  it 'returns a list of stations by zipcode' do
   #As a user
   #When I visit "/"
    visit '/'
   #And I fill in the search form with 80203
    fill_in 'q', with: '80203'
   #And I click "Locate"
    click_button 'Locate'
   #Then I should be on page "/search" with parameters visible in the url
    expect(current_path).to eq('/search')
   #Then I should see a list of the 10 closest stations within 6 miles sorted by distance
   #And the stations should be limited to Electric and Propane
   #And for each of the stations I should see Name, Address, Fuel Types, Distance, and Access Times

  end
end