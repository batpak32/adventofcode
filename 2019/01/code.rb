#!/usr/bin/env ruby

file_path = File.expand_path("../input.txt", __FILE__)
input     = File.read(file_path)

fuel_per_module = input.split("\n").map { |m| (m.to_i / 3 ) -2 }

p fuel_per_module

puts "fuel_required = #{fuel_per_module.inject(:+)}"