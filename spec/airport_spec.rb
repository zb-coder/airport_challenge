require 'airport'


describe Airport do
  subject(:airport) {described_class.new(10)}
# User Story 1
  it 'checks a plane will land in the airport' do
  airport = Airport.new(10)
  plane = Plane.new
  expect { airport.land(plane) }.not_to raise_error
  end

# User Story 1
   it 'gets a plane to land' do
    expect(airport).to respond_to(:land)
   end

# User story 2
   it 'gets a plane to take off' do
    airport = Airport.new(10)
    plane = Plane.new
    expect(airport).to respond_to(:take_off)
   end

# User story 3
    it 'prevents landing when airport is full' do
    airport = Airport.new(10)
    plane = Plane.new
    10.times do
     airport.land(plane)
    end
    expect{airport.land(plane)}.to raise_error "Airport is full, you can't land this plane"
  end
end
