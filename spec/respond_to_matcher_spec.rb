class SuzukiSwift
  def steering
    'zoom'
  end

  def music
    'rock on'
  end

  def purchase(number)
    "Awesome, I just purchased Swift for #{number}"
  end
end

RSpec.describe SuzukiSwift do
  it 'confirm that each object can respond to a method' do
    expect(subject).to respond_to(:steering)
    expect(subject).to respond_to(:music)
    expect(subject).to respond_to(:steering, :music, :purchase)
  end

  #/it 'confirm that each object can respond to a method with arguments' do
  #/expect(subject).to respond_to(:purchase).(100).arguments
  #/end

  it { is_expected.to respond_to(:purchase, :steering) }
  #it { is_expected.to respond_to(:purchase).with(100).arguments }

end
