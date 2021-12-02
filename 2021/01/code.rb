#!/usr/bin/env ruby

file_path = File.expand_path("../input.txt", __FILE__)
input     = File.read(file_path)

numarray = input.split("\n").map(&:to_i)

def increased(numbers)
  numbers.each_cons(2) do |a|
    difference = a[0]-a[1]
    if difference < 0
      @count += 1
    end
  end
end

# Part 1
@count = 0
increased(numarray)
puts @count

# Part 2
@count = 0
array = numarray.each_cons(3).map { |a| a.inject(0, :+) }
increased(array)
puts @count