require 'time'
require 'set'

start = Time.now

input = ARGV[0] || "input.txt"
file = File.open(input,'r')

lines = file.readlines
#get the number of bulbs
number_of_bulbs = lines[0]
byte_string = '0'*number_of_bulbs.to_i
lines.delete_at(0)

puts Time.now - start

range = Set.new()
i = 0
lines.each do |line|

	p = Time.now

	line = line.split.sort.map(&:to_i)
	new_range = Set.new((line.first..line.last))
	range = range ^ new_range

	puts "#{i}: \t #{Time.now - p}"

	i += 1
end

file.close

puts range.length
puts Time.now - start