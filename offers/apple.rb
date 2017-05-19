module Apple
  def self.offers
    return [
      Proc.new { |items, total| Transaction.price_for_each(items, total, Ads::Standout, 23.00) }
    ]
  end
end
