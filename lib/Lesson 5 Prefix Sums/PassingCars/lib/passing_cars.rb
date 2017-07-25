def passing_cars(a)
  array = []

  for i in 0..a.length
    a[0] == 1 ? a.shift : break
  end

  for i in 0..a.length
    a.last == 0 ? a.pop : break
  end

  a.each_with_index { |element,index| array << index if element == 0}

  count = 0

  array.each do |element|
    count += a[element...a.size].select { |x| x == 1 }.count
  end

  count
end
