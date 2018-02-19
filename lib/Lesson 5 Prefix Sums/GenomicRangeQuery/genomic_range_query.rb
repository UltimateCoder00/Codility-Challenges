def genomic_range_query(s, p, q)
  array = []
  for i in 0...p.length
    if s[p[i]..q[i]].include?("A")
      array << 1
    elsif s[p[i]..q[i]].include?("C")
      array << 2
    elsif s[p[i]..q[i]].include?("G")
      array << 3
    else
      array << 4
    end
  end
  array
end
