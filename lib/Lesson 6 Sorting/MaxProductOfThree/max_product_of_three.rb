def max_product_of_three(a)
  a.sort!

  return a[0]*a[1]*a[-1] if a[0]*a[1] > a[-2]*a[-3] && a.last > 0
  return a[-1]*a[-2]*a[-3]
end
