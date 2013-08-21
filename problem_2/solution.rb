# Solution 1
# O(n)

def even_fib_sum(limit)
  sum = 0
  a = 1
  b = 2

  while( a < limit && b < limit ) do
    sum += b if b % 2 == 0

    temp = a + b
    a = b
    b = temp
  end

  sum
end

puts even_fib_sum(4_000_000)