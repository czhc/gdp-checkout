module Unilever
  def self.offers
    return [
      Proc.new { |items, total| Transaction.price_for_batch(items, total, Ads::Classic, 3, 2) }
    ]
  end
end
