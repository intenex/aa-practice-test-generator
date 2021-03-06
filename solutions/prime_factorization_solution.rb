def prime_factorization(num)
  return [] if num == 1

  (2..Math.sqrt(num).ceil).to_a.my_each do |i|
    if num % i == 0
      return [i] + prime_factorization(num/i)
    end
  end

  return [num]
end
