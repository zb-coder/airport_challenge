require 'airport'


describe Airport do
  subject(:airport) {described_class.new}
#User Story 1
  it 'checks a plane will land in the airport' do
  airport = Airport.new
  plane = Plane.new
  expect { airport.land(plane) }.not_to raise_error
  end
#User Story 1
   it 'gets a plane to land' do
    expect(airport).to respond_to(:land)
   end

end