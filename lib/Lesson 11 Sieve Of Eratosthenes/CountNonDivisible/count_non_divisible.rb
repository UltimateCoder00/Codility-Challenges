def count_non_divisible(a)
  feq_hash = a.inject(Hash.new(0)) {|hash,word| hash[word] += 1; hash }

  array = []

  for i in 0...a.length
    count = 0

    feq_hash.each do |x|
      count += x[1] if a[i] % x[0] != 0
    end

    array << count
  end

  array
end
