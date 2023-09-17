require_relative 'route'
require_relative 'station'
require_relative 'train'
require_relative 'train_car'

train = Train.new("1", "1", "1")
train.add_cars(TrainCar.new("1", "1"))

route = Route.new("omsk")
route.add_stations(Station.new("irkutsk"))
route.add_stations(Station.new("novosib"))
route.add_stations(Station.new("omsk"))

train.add_route(route)
binding.irb