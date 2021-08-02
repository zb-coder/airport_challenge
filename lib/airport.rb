class Airport

  def initialize(capacity)
    @capacity = capacity
    @num_of_planes_that_land = 0
  end

  # User story 1 & 3
  def land(plane)
    raise "Airport is full, you can't land this plane" if @num_of_planes_that_land >= @capacity
    
    @num_of_planes_that_land += 1
  end

  # User story 2
  def take_off(plane)

  end
end
