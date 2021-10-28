require 'airport'

describe Airport do
  it 'responds to plane' do
    expect(subject).to respond_to(:land)
  end
end