def min_avg_two_slice(a)
  arrays = method1(a)
  array = arrays[0]
  array2 = arrays[1]


  array2[array.index(array.min)]
end

def method1(a)
  array = []
  array2 = []

  for i in 0...(a.length - 1)
    sum = a[i]

    for j in (i+1)...(a.length)
      sum += a[j]

      array << (sum / (j - i + 1.0))
      array2 << i
    end
  end

  [array, array2]
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
