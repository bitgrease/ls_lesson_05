arr = ['10', '11', '9', '7', '8']

# sort by descending numeric value

sorted_arr = arr.sort_by(&:to_i).reverse
p sorted_arr

# solution is better because fewer method calls
sorted_arr = arr.sort { |a, b| b.to_i <=> a.to_i }
p sorted_arr
