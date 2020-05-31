arr = (1..16).to_a

4.times { |index| puts "new line #{arr[index * 4, 4]} current index: #{index}" }

puts '-----------------------------'
arr.each_slice(4) { |item| puts "new line #{item}" }
