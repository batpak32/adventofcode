#!/usr/bin/env ruby

file_path = File.expand_path("../input.txt", __FILE__)
input     = File.read(file_path)

course = input.split("\n").map(&:to_s)

# Part 1

def checkpos(input,_position,_minmax)
  arr = input.each.map { |a| a[_position].to_i }
  arr = arr.each_with_object(Hash.new(0)) { |n,h| h[n] += 1 }
  (_minmax == 'max') ? value = arr.values.max : value = arr.values.min
  arr.key(value)
end

length = course[0].length

gammarate = []
i = 0
while i < length
  arr = checkpos(course,i,'max')
  gammarate.push(arr)
  i += 1
end

gvalue = gammarate.join.to_i(2)

epsilonrate = []
i = 0
while i < length
  arr = checkpos(course,i,'min')
  epsilonrate.push(arr)
  i += 1
end

evalue = epsilonrate.join.to_i(2)

p gvalue * evalue