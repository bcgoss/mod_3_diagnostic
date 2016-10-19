require 'rails_helper'

describe 'Station' do
  it 'can find a list of stations by zip code' do
    station_list = Station.find_by_zip('80203')
    expect(station_list).to be_an(Array)
    #Name, Address, Fuel Types, Distance, and Access Times
    expect(station_list.first).to respond_to(:name)
  end
end
