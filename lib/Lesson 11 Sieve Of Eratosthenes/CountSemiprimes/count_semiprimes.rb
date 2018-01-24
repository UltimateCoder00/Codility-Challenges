require 'prime'

def count_semiprimes(n, p, q)
  array = get_prime_array(n)
  array_of_semiprimes(array, p, q)
end

def get_prime_array(n, array=[])
  for i in 1..n
    array << i if Prime.prime?(i)
  end
  array
end

def array_of_semiprimes(array, p, q, return_array=[])
  for i in 0...p.length
    number = 0

    for j in p[i]..q[i]
      for k in 0...(array.length-1)
        number2 = number

        for l in k...array.length
          if j == array[k]*array[l]
            number += 1
            break
          end
        end

        break if number2 != number
      end
    end

    return_array << number
  end

  return_array
end
