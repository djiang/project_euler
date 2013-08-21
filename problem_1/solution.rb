# Solution 1
# O(n) = n

count = 0
(3...1000).each do |n|
  count += n if (n % 3 == 0 || n % 5 == 0)
end
puts count

# Solution 2
# O(n) = 1

def sum_divisible_by(n, limit)
  num = limit/n
  (n * num * (num + 1))/2
end

puts sum_divisible_by(3, 999) + sum_divisible_by(5, 999) - sum_divisible_by(15, 999)