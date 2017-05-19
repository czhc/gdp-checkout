class Ads::Premium < Ads::Base
  BASE_PRICE = 394.99
  def initialize(**args)
    @weight = 0
    @price = self.class::BASE_PRICE
  end
end
