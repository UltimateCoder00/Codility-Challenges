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

def array_of_semiprimes(array, p, q, array_of_semiprimes=[])
  for i in 0...p.length
    array_of_semiprimes << count_number(i, array, p, q)
  end
  array_of_semiprimes
end

def count_number(i, array, p, q)
  number = 0
  for j in p[i]..q[i]
    number = count_number_inner_loop(j, array, number)
  end
  number
end

def count_number_inner_loop(j, array, number)
  for k in 0...(array.length-1)
    number2 = number
    number += counting_semiprimes(array, j, k)
    break if number2 != number
  end
  number
end

def counting_semiprimes(array, j, k)
  for l in k...array.length
    return 1 if semi_prime?(array[k], array[l], j)
  end
  0
end

def semi_prime?(prime1, prime2, semi_prime)
  prime1 * prime2 == semi_prime
end
