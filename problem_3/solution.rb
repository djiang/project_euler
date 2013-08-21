require_relative '../timer'
include Math

# Solution 1
# O(n^2)

def largest_prime_factor(x)
  (2..x).each do |factor|
    to_check = x / factor
    return to_check if (x % factor == 0 && is_prime?(to_check))
  end
end

def is_prime?(x)
  (2..(x / 2)).each do |factor|
    return false if x % factor == 0
  end
  true
end

timer do
  puts largest_prime_factor(600851475143)
end

# Solution 2

def largest_prime_factor(x)
  if x % 2 == 0
    last_factor = 2
    x = x / 2
    while( x % 2 == 0 ) do
      x = x / 2
    end
  else
    last_factor = 1
  end

  factor = 3
  max_factor = sqrt(x)

  while x > 1 && factor <= max_factor do
    if x % factor == 0
      last_factor = factor
      x = x / factor
      puts [factor, x].inspect
      while( x % factor == 0 ) do
        x = x / factor
        puts [factor, x].inspect
      end

      max_factor = sqrt(x)
    end

    factor += 2
  end

  x == 1 ? last_factor : x
end

timer do
  puts largest_prime_factor(600851475143)
end