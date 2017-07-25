def passing_cars(a)
  array = []

  a.each_with_index { |element,index| array << index if element == 0}

  count = 0

  array.each_with_index { |element,index| count += a[index+1...a.size].select { |x| x == 1 }.count }
  count
end
