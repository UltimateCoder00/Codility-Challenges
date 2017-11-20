def min_abs_sum_of_two(a)
  min_abs = (a[0]+a[0]).abs

  for i in 0...a.length
    for j in i...a.length
      min_abs = (a[i]+a[j]).abs if min_abs > (a[i]+a[j]).abs
    end
  end

  min_abs
end
