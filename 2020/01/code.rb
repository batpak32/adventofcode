#!/usr/bin/env ruby

file_path = File.expand_path("../input.txt", __FILE__)
input     = File.read(file_path)

numbers = input.split("\n").map(&:to_i)

# Part 1
numbers.each do |num|
  first_num = 2020 - num
  if numbers.include?(first_num)
    p "#{num * first_num}"
    break
  end
end

# Part 2
numbers.to_a.combination(2) do |num1,num2|
  first_num = 2020 - num1 - num2
  if numbers.include?(first_num)
    p "#{num1 * num2 * first_num}"
    break
  end
end