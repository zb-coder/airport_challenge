class Airport
attr_reader :plane

  def land(plane)
    @plane = plane
  end

  def take_off
    fail 'There are no planes in the airport' unless @plane
    @plane
  end
end