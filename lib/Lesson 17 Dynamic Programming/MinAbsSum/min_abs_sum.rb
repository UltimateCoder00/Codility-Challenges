def min_abs_sum(a)
  min_abs_sum = a.first

  for i in 1...a.length
    if min_abs_sum > 0
      a[i] > 0 ? min_abs_sum -= a[i] : min_abs_sum += a[i]
    else
      a[i] > 0 ? min_abs_sum += a[i] : min_abs_sum -= a[i]
    end
  end

  min_abs_sum.abs
end
