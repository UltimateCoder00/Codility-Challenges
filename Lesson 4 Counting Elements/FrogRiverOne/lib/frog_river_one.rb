def frog_river_one(x, a)
  array = [*1..x]
  b = a.uniq
  c = b.sort

  array == c ? a.index(b.last) : -1
end
