class StationService

  def self.find_by_zip(postal_code)
    
  end

  def connection
    faraday.new(url: 'https://api.data.gov/nrel/alt-fuel-stations/v1') do |faraday|
      faraday.headers['X-Api-Key'] = ENV['nrel_api_key']
    end
  end

#https://api.data.gov/nrel/alt-fuel-stations/v1/nearest.json?location=80203&radius=6.0&fuel_type=ELEC,LPG&limit=10&status=E
end
