Dir["./ads/*.rb"].each {|file| require file }
Dir["./offers/*.rb"].each {|file| require file }
require './checkout.rb'
require 'rspec'

Rspec.describe Checkout do
  let(:classic){ Ads::Classic.new }
  let(:standout){ Ads::Standout.new }
  it 'sums total' do
    expect(subject.scan(classic).scan(standout).total).to eq(322.99 + 269.99)
  end
end
