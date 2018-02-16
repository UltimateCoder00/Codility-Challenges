def max_profit(a)
  return 0 if a.count == 0

  max_profit = 0
  lowest_price = a[0]

  for i in 1...a.length
    price = a[i]
    lowest_price = [lowest_price, a[i]].min
    max_profit = [max_profit, price - lowest_price].max
  end

  max_profit
end
