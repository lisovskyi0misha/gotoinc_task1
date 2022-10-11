puts 'Enter your name'
name = gets.chomp
puts 'Enter your height'
height = gets.to_i
ideal_weigh = height - 110
puts ideal_weigh < 0 ? "#{name}, your weight is already optimal" : "#{name}, your ideal weight is #{ideal_weigh}"