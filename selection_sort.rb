#!/usr/bin/env ruby
require 'pp'
require 'common'

=begin
find the minimum number and place it at the beginning, do same for the rest

for i in 1..n
  champion = i
  for j in i+1..n
    challenger = j
    if A[challenger] < A[champion]
      champion = challenger
  A[champion] <=> A[i] //swap A[champion] and A[i]
=end

# main program

validations
inputs = ARGV.extract_inputs.map(& :to_i)

pp inputs if debug?

(0...inputs.length).each do |i|
  champion = i
  (i+1...inputs.length).each do |challenger|
    champion = challenger if inputs[challenger] < inputs[champion]
  end
  
  unless champion == i
    loser = inputs[i]
    inputs[i] = inputs[champion]
    inputs[champion] = loser
  end

  pp inputs if debug?
end

pp inputs unless debug?
