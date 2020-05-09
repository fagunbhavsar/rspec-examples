class SmartPhone
  attr_reader :camera, :screen, :network

  def initialize(camera, screen, network)
    @camera = camera
    @screen = screen
    @network = network
  end

  RSpec.describe 'have_attributes matcher' do
    describe SmartPhone.new('Zeiss lenses', 'Full HD', '4G') do
      it 'checks for object attributes and its proper values' do
        expect(subject).to have_attributes(camera: 'Zeiss lenses', screen: 'Full HD')
      end

      it { is_expected.to have_attributes(camera: 'Zeiss lenses', screen: 'Full HD') }
    end
  end
end