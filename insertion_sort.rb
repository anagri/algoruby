#!/usr/bin/env ruby
require 'pp'
require 'common'

=begin
insertion sort

for i in 2..n
  input = inputs[i]
  while i > 1 && inputs[i-1] > input
    inputs[i] = inputs[i-1]
    i--
  inputs[i] = input

=end

# main program

validations
inputs = ARGV.extract_inputs.map(& :to_i)

(1...inputs.length).each do |i|
  input = inputs[i]
  while i > 0 && inputs[i-1] > input do
    inputs[i] = inputs[i-1]
    i=i-1
  end
  inputs[i] = input
  pp inputs if debug?
end

pp inputs if !debug?
