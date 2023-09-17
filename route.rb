class Route
  attr_reader :stations

  def initialize(name)
    @name = name
    @stations = []
  end
 
  def add_stations(station)
    stations << station
  end
end