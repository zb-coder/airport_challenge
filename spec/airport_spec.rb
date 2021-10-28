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

    describe '#takeoff' do
      it 'releases a plane' do
        plane = Plane.new
        subject.land(plane)
        subject.take_off
        expect(subject.take_off).to eq plane
      end

      it 'raises error if there are no planes to takeoff' do
        expect { subject.take_off }.to raise_error 'There are no planes in the airport'
      end
    end
  end
end