def perm_missing_elem(a)
  b = (1..(a.length+1)).to_a
  (b - a)[0]
end
