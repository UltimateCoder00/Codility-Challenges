require 'prime'

def common_prime_divisors(a, b)
  common_prime_divisors = 0

  for i in 0...a.length
    maxValue = [a[i],b[i]].max
    minValue = [a[i],b[i]].min

    next if skip?(minValue, maxValue)

    common_prime_divisors += counting(minValue, maxValue)
  end

  common_prime_divisors
end

def prime?(number)
  Prime.prime?(number)
end

def divisible?(numerator, denominator)
  numerator % denominator == 0
end

def skip?(minValue, maxValue)
  skip_condition1?(minValue, maxValue) || skip_condition2?(minValue, maxValue)
end

def skip_condition1?(minValue, maxValue)
  maxValue != minValue && prime?(maxValue)
end

def skip_condition2?(minValue, maxValue)
  for i in (minValue+1)...maxValue
    return true if divisible?(maxValue, i) && prime?(i)
  end

  false
end

def counting(minValue, maxValue)
  counter = 0

  for i in 1..minValue
    break if break?(minValue, maxValue, i)
    counter += 1 if i == minValue
  end

  counter
end

def break?(minValue, maxValue, i)
  break_condition1?(minValue, maxValue, i) && break_condition2?(i)
end

def break_condition1?(minValue, maxValue, i)
  divisible?(maxValue, i) ? !divisible?(minValue,i) : divisible?(minValue, i)
end

def break_condition2?(i)
  prime?(i)
end
