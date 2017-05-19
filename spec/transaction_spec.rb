Dir["./ads/*.rb"].each {|file| require file }
Dir["./offers/*.rb"].each {|file| require file }
require './checkout.rb'
require './transaction.rb'
require 'rspec'

RSpec.describe Transaction do
  describe '.price_for_batch' do
    it do
      items = [
        Ads::Classic.new,
        Ads::Standout.new,
        Ads::Standout.new,
        Ads::Standout.new
      ]

      expect(
        Transaction.price_for_batch(items, 100.00, Ads::Standout, 2, 1)
      ).to eq(-222.99)
    end
  end
end



RSpec.describe 'For Nike' do
  it do
    nike = Checkout.new(Nike.offers)
    nike.scan(Ads::Premium.new)
    nike.scan(Ads::Premium.new)
    nike.scan(Ads::Premium.new)
    nike.scan(Ads::Premium.new)
    expect(nike.net_total).to eq(1519.96)
  end
end
