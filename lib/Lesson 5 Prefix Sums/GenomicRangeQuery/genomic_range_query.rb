def genomic_range_query(s, p, q)
  array = []
  for i in 0...p.length
    array << impact_factor(s[p[i]..q[i]])
  end
  array
end

def impact_factor(string)
  return 1 if string.include?("A")
  return 2 if string.include?("C")
  return 3 if string.include?("G")
  return 4
end
