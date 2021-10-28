require 'airport'

describe Airport do
  
  describe '#land' do
    it 'responds to plane' do
      expect(subject).to respond_to(:land)
    end
    
    it 'lands a plane' do
    plane = Plane.new
    subject.land(plane)  
    expect(subject.plane).to eq plane

    end
  end
end