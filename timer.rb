def timer
  t = Time.now
  yield
  puts "Runtime: #{Time.now - t} seconds"
end