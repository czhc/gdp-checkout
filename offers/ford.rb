module Ford
  # FORD
  #
  # - Gets a 5 for 4 deal on Classic Ads
  #
  # - Gets a discount on Standout Ads where the price drops to $309.99 per ad
  #
  # - Gets a discount on Premium Ads when 3 or more are purchased. The price drops
  #
  # to $389.99 per ad
  def self.offers
    return [
      Proc.new { |items, total| Transaction.price_for_batch(items, total, Ads::Classic, 5, 4) },
      Proc.new { |items, total| Transaction.price_for_each(items, total, Ads::Standout,  85.00) },
      Proc.new { |items, total| Transaction.price_for_total(items, total, Ads::Premium, 4,  5.00) }
    ]
  end
end
