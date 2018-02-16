def max_profit(a)
  return 0 unless a.any?

  max_profit = 0
  lowest_price = a.first

  a.each do |price|
    lowest_price = [lowest_price, price].min
    max_profit = [max_profit, price - lowest_price].max
  end

  max_profit
end
