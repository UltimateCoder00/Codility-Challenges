def str_symmetry_point(s)
  return 0 if s.length == 1
  return -1 if s.length == 0

  for i in 0..(s.length / 2)
    return -1 if s[i] != s[s.length - 1 - i]
  end

  s.length % 2 == 0 ? -1 : s.length / 2
end
