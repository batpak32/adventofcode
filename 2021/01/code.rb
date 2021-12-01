#!/usr/bin/env ruby

file_path = File.expand_path("../input.txt", __FILE__)
input     = File.read(file_path)

numbers = input.split("\n").map(&:to_i)

# Part 1
@count = 0
numbers.each_cons(2) do |a|
  difference = a[0]-a[1]
  if difference < 0
    @count += 1
  end
end

puts @count
