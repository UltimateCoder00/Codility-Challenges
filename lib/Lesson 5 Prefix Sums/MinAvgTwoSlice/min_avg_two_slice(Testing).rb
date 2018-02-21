def min_avg_two_slice(a)
  min_slice = 0
  average = average(sum(a), count(a))

  for i in 0...a.length
    break if a[i..-(i+1)].count == 0
    break if a[i..-(i+1)].count == 1
    # p "*********"
    # p a[i..-(i+1)]
    # p average

    average2 = check_array_averages(a[i..-(i+1)], average)

    if average > average2
      average = average2
      min_slice = i
    end
  end

  min_slice
end

def check_array_averages(a, average)
  return average if a.count == 0

  if a.count == 2
    new_average = average(sum(a[0..-1]), count(a[0..-1]))
    average > new_average ? (return new_average) : (return new_average)
  end

  if a.count == 3
    new_average = average(sum(a[0..2]), count(a[0..2]))
    new_average2 = average(sum(a[0..1]), count(a[0..1]))
    new_average3 = average(sum(a[1..2]), count(a[1..2]))

    if average > new_average
      average = new_average
    end

    if average > new_average2
      average = new_average2
    end

    if average > new_average3
      average = new_average3
    end

    return average
  end

  for i in 1...a.length
    new_average = average(sum(a[i..-1]), count(a[i..-1]))
    new_average2 = average(sum(a[0..-(i+1)]), count(a[0..-(i+1)]))

    if average > new_average
      average = new_average
    end

    if average > new_average2
      average = new_average2
    end
  end

  average
end

def sum(array)
  array.inject(:+)
end

def count(array)
  array.count.to_f
end

def average(sum, numbers)
  sum / numbers
end

# def min_avg_two_slice(a)
#   arrays = method1(a)
#   array = arrays[0]
#   array2 = arrays[1]
#
#
#   array2[array.index(array.min)]
# end

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
