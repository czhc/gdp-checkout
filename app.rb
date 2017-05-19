Dir["./ads/*.rb"].each {|file| require file }
Dir["./offers/*.rb"].each {|file| require file }
require './transaction.rb'
require './checkout.rb'

default = Checkout.new
default.scan(Ads::Classic.new)
default.scan(Ads::Standout.new)
default.scan(Ads::Premium.new)
puts "default - #{default.net_total}"

unilever = Checkout.new(Unilever.offers)
unilever.scan(Ads::Classic.new)
unilever.scan(Ads::Classic.new)
unilever.scan(Ads::Classic.new)
unilever.scan(Ads::Premium.new)
puts "unilever - #{unilever.net_total}"


apple = Checkout.new(Apple.offers)
apple.scan(Ads::Standout.new)
apple.scan(Ads::Standout.new)
apple.scan(Ads::Standout.new)
apple.scan(Ads::Premium.new)
puts "apple - #{apple.net_total}"


nike = Checkout.new(Nike.offers)
nike.scan(Ads::Premium.new)
nike.scan(Ads::Premium.new)
nike.scan(Ads::Premium.new)
nike.scan(Ads::Premium.new)
puts "nike - #{nike.net_total}"
