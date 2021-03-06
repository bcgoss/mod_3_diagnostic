class Station 
  attr_reader :name,
              :address,
              :fuel_type,
              :distance,
              :access_time
  def self.find_by_zip(postal_code)
    attributes = {
      name: 'Hyatt Regency Denver',
      address: '650 15th St Denver CO 80202',
      fuel_type: 'Electric',
      distance: 1.03475,
      access_time: '24 hours daily'
    }
    attributes_list = StationService.find_by_zip(postal_code)
    attributes_list.map do |attrs|
      Station.new(attrs)
    end
  end
  
  def initialize(attributes)
    @name = attributes[:name]
    @address = attributes[:address]
    @fuel_type = attributes[:fuel_type]
    @distance = attributes[:distance]
    @access_time = attributes[:access_time]
  end
end
