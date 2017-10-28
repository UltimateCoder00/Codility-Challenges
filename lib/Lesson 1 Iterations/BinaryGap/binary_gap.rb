def binary_gap(number)
  array = []

  number.to_s(2).sub(/0+$/,'').split('').chunk { |n|
    n == '0'
  }.each { |x| array.push(x[1].count) if x[0] == true }

  array.max.class == Fixnum ? array.max : 0
end
