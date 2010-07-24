#!/usr/bin/env ruby
require 'pp'

def validations
  valid = ARGV.extract_inputs.all? do |argument|
    argument =~ /\d+/ # any of the argument is not a number
  end

  unless valid
    $stderr.puts 'input is invalid'
    exit
  end
end

class Array
  def extract_inputs
    reject { |input| input =~ /^--/ }
  end
end

def debug?
  ARGV.include?('--debug')
end

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

