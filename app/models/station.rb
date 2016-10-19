class Station 
  attr_reader :name,
              :address,
              :fuel_types,
              :distance,
              :access_times
  def self.find_by_zip(postal_code)
    [Station.new, Station.new]
  end
end
