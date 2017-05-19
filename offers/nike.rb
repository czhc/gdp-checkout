module Nike
  def self.offers
    return [
      Proc.new { |items, total| Transaction.price_for_total(items, total, Ads::Premium, 4, 15.00) }
    ]
  end
end
