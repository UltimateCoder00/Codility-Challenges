def frog_river_one(x, a)
  array = []

  for i in 1..x
    array << a.index(i)
  end

  array.include?(nil) ? -1 : array.max
end
