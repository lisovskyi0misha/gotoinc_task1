numbers = {}

['a', 'b', 'c'].each do |coefficient|
  puts "Enter coefficient #{coefficient}"
  numbers[coefficient.to_sym] = gets.to_i
end

d = numbers[:b] ** 2 - 4 * numbers[:a] * numbers[:c]
begin
  x1 = (-numbers[:b] + Math.sqrt(d)) / 2 * numbers[:a]
  x2 = (-numbers[:b] - Math.sqrt(d)) / 2 * numbers[:a]
  if d > 0
    puts "D = #{d}, x1 = #{x1}, x2 = #{x2}"
  else
    puts "D = #{d}, x = #{x1}"
  end
rescue
  puts "D = #{d}, there is no roots"
end