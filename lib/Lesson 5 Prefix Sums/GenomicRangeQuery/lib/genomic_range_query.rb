def genomic_range_query(s, p, q)
  s.gsub!("A","1")
  s.gsub!("C","2")
  s.gsub!("G","3")
  s.gsub!("T","4")

  s = s.split("").map(&:to_i)

  array = []

  for i in 0...p.length
    if s[p[i]..q[i]].include?(1)
      array << 1
    elsif s[p[i]..q[i]].include?(2)
      array << 2
    elsif s[p[i]..q[i]].include?(3)
      array << 3
    else
      array << 4
    end
  end

  array
end
