require 'irb'
arr = [{a: [1, 2, 3]}, {b: [2, 4, 6], c: [3, 6], d: [4]}, {e: [8], f: [6, 10]}]

array_of_evens = arr.select do |hash|
                   hash.all? do |key, values|
                     values.all?(&:even?)
                   end
                 end

p array_of_evens