#!/usr/bin/env ruby

file_path = File.expand_path("../input.txt", __FILE__)
input     = File.read(file_path)

course = input.split("\n").map { |a| a.split }

# Part 1
hpos = 0
vpos = 0

course.each do |instruction|
  case instruction[0]
  when "forward"
    hpos += instruction[1].to_i
  when "up"
    vpos -= instruction[1].to_i
  when "down"
    vpos += instruction[1].to_i
  end
end

p "Part 1: #{ hpos * vpos }"

# Part 1
hpos = 0
vpos = 0
aim = 0

course.each do |instruction|
  case instruction[0]
  when "forward"
    hpos += instruction[1].to_i
    vpos += ( instruction[1].to_i * aim )
  when "up"
    aim -= instruction[1].to_i
  when "down"
    aim += instruction[1].to_i
  end
end

p "Part 2: #{ hpos * vpos }"