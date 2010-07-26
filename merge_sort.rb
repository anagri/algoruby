#!/usr/bin/env ruby
require 'pp'
require 'common'

=begin


mergesort(A, j, k)
  if k = 1
    return 
  m = k/2
  n = k - k/2
  mergesort(A, j, m)
  mergesort(A, j + m + 1, n)
  merge(A, j, m, n)

merge(A, j, m, n)
  K = A[j..j+m]
  L = A[j+m+1..j+n]
  x = 1
  y = 1
  for i in j..j+m+n-1
    if y > n || x <= m && K[x] < L[y]
      A[i] = K[x]
      x++
    else
      A[i] = L[y]
      y++  

mergesort(A,1,A.length)

=end

# main program

validations
inputs = ARGV.extract_inputs.map(& :to_i)

class Array
  def mergesort(j, k)
    return if k==1 
    pp "mergesort from index #{j} of length #{k}" if debug?
    m = k/2
    n = k - k/2
    mergesort(j, m)
    mergesort(j+m, n)
    merge(j, m, n)
  end

  def merge(j, m, n)
    pp "merge from index #{j} of length #{m} and #{n}" if debug?
    k = slice(j, m)
    l = slice(j+m, n)
    x = 0
    y = 0
    (j...j+m+n).each do |i|
      if y>=n || (x < m && k[x] < l[y])
        self[i] = k[x]
        x=x+1
      else
        self[i] = l[y]
        y=y+1
      end
    end
    pp slice(j, m+n)
  end
end

inputs.mergesort(0, inputs.length)

pp inputs

