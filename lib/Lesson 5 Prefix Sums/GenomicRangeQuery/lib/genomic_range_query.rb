def genomic_range_query(s, p, q)
  s.gsub!("A","1")
  s.gsub!("C","2")
  s.gsub!("G","3")
  s.gsub!("T","4")
  s = s.split("").map(&:to_i)

  array = []

  for i in 0...p.length
    array << s[p[i]..q[i]].min
  end

  array
end
