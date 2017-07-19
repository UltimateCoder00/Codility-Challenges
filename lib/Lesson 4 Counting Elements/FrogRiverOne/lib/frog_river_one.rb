def frog_river_one(x, a)
  array = a.uniq
  array2 = array.sort

  [*1..x] == array2 ? a.index(array.last) : -1
end
