#!/usr/bin/env ruby

file_path = File.expand_path("../input.txt", __FILE__)
input     = File.read(file_path)

# Part 1
puts input.split("\n").count { |line|
  policy, password  = line.split(":").map(&:strip)

  range, letter = policy.split(" ")

  min, max = range.split("-").map(&:to_i)

  count_check = password.chars.count { |c| c == letter }
  (min..max).cover?(count_check)
}

# Part 2
puts input.split("\n").count { |line|
  policy, password  = line.split(":").map(&:strip)

  range, letter = policy.split(" ")

  pos1, pos2 = range.split("-").map(&:to_i)

  (password[pos1 - 1] == letter) ^ (password[pos2 - 1] == letter)
}