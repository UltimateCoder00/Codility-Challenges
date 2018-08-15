def k_sparse_binary_count(s, t, k)
  number_of_k_sparses = 0
  limit = 1_000_000_006
  limit_division = 1_000_000_007

  (s.to_i(2)..t.to_i(2)).to_a.each do |number|
    next if invalid?(number, k)
    next if invalid2?(number)

    if valid?(number, k)
      number_of_k_sparses += 1
      next
    end

    number = number.to_s(2)

    while true
      number[-1] == '0' ? number = number[0..-2] : break
    end

    number = number[1..-1]
    count = 0

    while true
      break if number.length == 0

      count += 1 if number[0] == '0'

      if count == k
        number_of_k_sparses += 1
        break
      end

      count = 0 if number[0] == '1'

      number = number[1..-1]
    end
  end

  number_of_k_sparses > limit ? number_of_k_sparses % limit_division : number_of_k_sparses
end

def invalid?(number, k)
  number.to_s(2).chars.count('0') < k
end

def invalid2?(number)
  array = number.to_s(2).chars.chunk {|x| x == '1'}.to_a

  if array.length == 2
    array[0][1].length == 1 ? (return false) : (return true)
  else
    false
  end
end

def valid?(number, k)
  return false unless number.to_s(2).chars.count('1') == 1
  return true if number.to_s(2).chars.count('0') >= k
  false
end
