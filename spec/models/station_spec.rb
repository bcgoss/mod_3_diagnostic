require 'rails_helper'

describe 'Station' do
  it 'can find a list of stations by zip code' do
    station_list = Station.find_by_zip('80203')
    station = station_list.first

    expect(station_list).to be_an(Array)
    expect(station).to be_a(Station)
    #Name, Address, Fuel Types, Distance, and Access Times
    expect(station.name).to eq('Hyatt Regency Denver')
  end
end
