def min_avg_two_slice(a)
  min_average = (a.first.to_f + a[1]) / 2
  min_average_index = 0

  for i in 0...(a.length - 1)
    sum = a[i]

    for j in (i+1)...(a.length)
      sum += a[j]

      if min_average?(sum, i, j, min_average)
        min_average = average(sum, i, j)
        min_average_index = i
      end
    end
  end

  min_average_index
end

def average(sum, i, j)
  sum / distance(i, j)
end

def min_average?(sum, i, j, min_average)
  sum / distance(i, j) < min_average
end

def distance(i, j)
  (j - i + 1.0)
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
