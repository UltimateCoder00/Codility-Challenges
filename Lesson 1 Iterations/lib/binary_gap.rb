def binary_gap(number)
  number = number.to_s(2).split('')

  number.length.times do
    if number[-1] == "0"
      number = number[0..-2]
    else
      break
    end
  end

  array = []
  number.chunk { |n|
    n == '0'
  }.each { |x| array.push(x[1].count) if x[0] == true }

  array.max.class == Integer ? array.max : 0
end
