def min_avg_two_slice(a)
  min_average = (a[0] + a[1]) / 2.0
  min_average_index = 0

  for i in 0...(a.length - 1)
    sum = a[i]

    for j in (i+1)...(a.length)
      sum += a[j]

      if sum / (j - i + 1.0) < min_average
        min_average = sum / (j - i + 1.0)
        min_average_index = i
      end
    end
  end

  min_average_index
end

def method2(a)
  array = []
  array2 = []

  comb = [*0...a.length].combination(2).to_a

  comb.each do |x|
    array << ( a[x[0]..x[1]].sum / (x[1] - x[0] + 1.0) )
    array2 << x[0]
  end

  [array, array2]
end
