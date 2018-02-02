def genomic_range_query(s, p, q)
  impact_factor_array(turn_into_array_integers(replace_characters(s)), p, q)
end

def replace_characters(array)
  replacements = [ ["A","1"], ["C","2"], ["G","3"], ["T","4"] ]
  replacements.each {|replacement| array.gsub!(replacement[0], replacement[1])}
  array
end

def turn_into_array_integers(array)
  array.split("").map(&:to_i)
end

def impact_factor_array(s, p, q, array=[])
  for i in 0...p.length
    [1,2,3,4].each do |val|
      if s[p[i]..q[i]].include?(val)
        array << val
        break
      end
    end
  end
  array
end
