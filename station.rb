class Station
  attr_reader :trains

  def initialize(name)
    @name = name
    @trains = []
  end
  
  def add_train(train)
    if train.is_a?(Train)
      trains << train
    end
  end

  def remove_train(train)
    @trains.delete(train)
  end
end