def str_symmetry_point(s)
  return -1 if not_symmetric?(s)
  return 0 if s.length == 1
  s.length % 2 == 0 ? -1 : s.length / 2
end

def not_symmetric?(s)
  s.length == 0 || broken?(s)
end

def broken?(s)
  for i in 0..(s.length / 2)
    return true if s[i] != s[s.length - 1 - i]
  end

  false
end
