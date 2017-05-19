module Ads
  class Base
    BASE_PRICE = 0.00
    attr_reader :weight, :text_length, :logo, :price

    def initialize(**args)
      @weight = 0
      @text_length = 10
      @price = self.class::BASE_PRICE
    end
  end
end
