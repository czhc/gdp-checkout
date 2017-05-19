class Checkout
  attr_accessor :items, :offers
  attr_reader :total

  def initialize(offers=[])
    @items = []
    @offers = offers
    @total = 0
  end

  def scan(item)
    @items << item
    @total += item.price
  end

  def net_total
    return @offers.inject(@total){ |sum, o| sum = o.call(items, sum) }
  end
end
