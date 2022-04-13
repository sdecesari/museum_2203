require './lib/exhibit'
require './lib/patron'

RSpec.describe Patron do
  describe 'iteration I' do
    it 'exists and has attributes' do
      patron_1 = Patron.new("Bob", 20)

      expect(patron_1).to be_an Patron
      expect(patron_1.name).to eq "Bob"
      expect(patron_1.spending_money).to eq 20
      expect(patron_1.interests).to eq ([])
      end
    end

    it 'can add interests' do
      patron_1 = Patron.new("Bob", 20)
      patron_1.add_interest("Dead Sea Scrolls")
      patron_1.add_interest("Gems and Minerals")

      expect(patron_1.interests).to eq(["Dead Sea Scrolls", "Gems and Minerals"])
    end
end
