require 'time'
require 'set'

start = Time.now

input = ARGV[0] || "test.txt"

changes = SortedSet.new()
File.open(input,'r').readlines[1..-1].each do |line|
	line = line.split.map(&:to_i)
	line.sort!
	a = line.first
	b = line.last+1
	if(changes.include?(a))
		changes.delete(a)
	else
		changes.add(a)
	end
	if(changes.include?(b))
		changes.delete(b)
	else
		changes.add(b)
	end
end

changes = changes.to_a
puts changes.each_slice(2).map(&:last).reduce(:+) - changes.each_slice(2).map(&:first).reduce(:+)
puts "Time Elapsed: #{Time.now - start}s"