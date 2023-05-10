numbers = [10,5,8,3,9]
max = numbers[0]

numbers.each do |number|
    if number > max
        max = number
    end
end

puts "O maior numero é #{max}"