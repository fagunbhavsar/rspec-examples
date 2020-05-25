class SuzukiSwift

  def steering
    "Zoom"
  end

  def music
    "Rock on"
  end

  def purchase(number)
    "I just purchased it in #{number}, just awesome deal!"
  end
end

RSpec.describe SuzukiSwift do
  it 'confirms that an object can respond to a method' do
    expect(subject).to respond_to(:steering)
    expect(subject).to respond_to(:steering, :music)
    expect(subject).to respond_to(:steering, :music, :purchase)
  end

  it 'confirms that an object can respond to a method with an argument' do
    expect(subject).to respond_to(:purchase).with(100)
  end

  it { is_expected.to respond_to(:purchase, :music) }
  it { is_expected.to respond_to(:purchase).with(100) }
end
