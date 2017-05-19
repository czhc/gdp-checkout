class Ads::Standout < Ads::Base
  BASE_PRICE = 322.99
  def initialize(**args)
    @logo = args[:logo_url]
    @text_length = 20
    @price = self.class::BASE_PRICE
  end
end
