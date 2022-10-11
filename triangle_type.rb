sides = []

['first', 'second', 'third'].each do |number|
    puts "Enter #{number} side"
    sides << gets.to_i
end
hypotenuse = sides.max

sides.delete_at(sides.index(hypotenuse))
legs_sum = sides.first ** 2 + sides.last ** 2

puts 'Triangle is isosceles' if sides.first == sides.last
if hypotenuse ** 2 == legs_sum
    puts 'Triangle is right' 
else
    puts 'Triangle is equilateral' if sides.first == sides.last && sides.first == hypotenuse
end
