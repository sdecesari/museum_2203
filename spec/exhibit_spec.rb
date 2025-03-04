require './lib/exhibit'
require './lib/patron'

RSpec.describe Exhibit do
  describe 'iteration I' do
    it 'exists and has attributes' do
      exhibit = Exhibit.new({name: "Gems and Minerals", cost: 0})

      expect(exhibit).to be_a Exhibit
      expect(exhibit.name).to eq "Gems and Minerals"
      expect(exhibit.cost).to eq 0
    end
  end

end
