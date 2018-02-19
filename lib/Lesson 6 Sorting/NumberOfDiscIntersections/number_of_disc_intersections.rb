def number_of_disc_intersections(a)
  circle_radii = get_circle_radii(a)
  count = 0
  for i in 0...(circle_radii.length-1)
    for j in (i+1)...circle_radii.length
      check_inequality(circle_radii[i][1],circle_radii[j][0]) ? count +=1 : break
    end
  end
  count
end

def get_circle_radii(a, array=[])
  a.each_with_index do |val, index|
    array << [index - val, index + val]
  end
  array.sort
end

def check_inequality(a, b)
  a >= b
end
