def frog_river_one(x, a)
  array = a.uniq
  identical?(x, array) ? a.index(array.last) : -1
end

def identical?(x, array)
  [*1..x] == array.sort
end
