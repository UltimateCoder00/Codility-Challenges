def max_slice_sum(a)
  count = a[0]
  for i in 0...a.length
    for j in i...a.length
      count = a[i..j].inject(0){|sum,x| sum + x } if count < a[i..j].inject(0){|sum,x| sum + x }
    end
  end

  count
end
