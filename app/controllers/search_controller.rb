class SearchController < ApplicationController

  def index
    @stations = [{name: 'Test', address: '123 Fake St.'}, {name: 'Test', address: '123 Fake St.'}]
  end
end
