class Train
  attr_reader :cars, :max_cars

  def initialize(number, type, max_cars)
    @number = number
    @type = type
    @route = nil
    @cars = []
    @max_cars = max_cars.to_i
  end
  
  def add_cars(traincar)
    if traincar.is_a?(TrainCar)
      cars << traincar if cars.length < max_cars
    end
  end

  def add_route(route)
    if route.is_a?(Route)
      @route = route
      @current_station_index = 0
      current_station.add_train(self)
    end
  end

  def train_move_forward
    if @route.stations.length > @current_station_index + 1
      @current_station_index += 1
      previous_station.remove_train(self)
      current_station.add_train(self)
    end
  end

  def train_move_back
    if @current_station_index > 0
      @current_station_index -= 1
      next_station.remove_train(self)
      current_station.add_train(self)
    end
  end

  def next_station
    @route.stations[@current_station_index + 1]
  end

  def current_station
    @route.stations[@current_station_index]
  end

  def previous_station
    @route.stations[@current_station_index - 1]
  end
end