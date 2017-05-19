module Transaction
  def self.price_for_batch(items, total, klass, batch_size, unit_size)
    puts "running price_for_batch"
    puts "running total: #{total}"

    size = items.select{ |i| i.is_a? klass }.size

    puts size
    puts items

    return total -= (size / batch_size) * (batch_size - unit_size) * klass::BASE_PRICE
  end

  def self.price_for_each(items, total, klass, discount)
    puts "running price_for_each"
    puts "running total: #{total}"
    size = items.select{ |i| i.is_a? klass }.size
    return total -= (size * discount)
  end


  def self.price_for_total(items, total, klass, cap, discount)
    puts "running price_for_total"
    puts "running total: #{total}"
    size = items.select { |i| i.is_a? klass }.size
    if size > cap
      return total -= size * (klass::BASE_PRICE - discount)
    else
      return total
    end
  end
end
