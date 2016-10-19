class SearchController < ApplicationController

  def index
    @stations = Station.find_by_zip(search_params)
    @stations = [{name: 'Test', address: '123 Fake St.'}, {name: 'Test', address: '123 Fake St.'}]
  end

  private
    def search_params
      params.permit(:q)
    end
end
