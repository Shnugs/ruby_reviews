array = ["jim", "sam", "jane", "spot"]

array.length.times do |puppy_name|
  p array[puppy_name].capitalize
end

puts "===================="

array.each do |puppy_name|
  p array[puppy_name].capitalize
end