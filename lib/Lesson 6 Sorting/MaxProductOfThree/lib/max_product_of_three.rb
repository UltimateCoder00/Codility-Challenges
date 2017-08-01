def max_product_of_three(a)
  a.sort!

  if a[0]*a[1] > a[-2]*a[-3]
    return a[0]*a[1]*a[-1]
  else
    return a[-1]*a[-2]*a[-3]
  end
end
