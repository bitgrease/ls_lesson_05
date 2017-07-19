arr = [[1,6,7], [1,4,9],[1,8,3]]

sorted_arr = arr.sort_by do |arr|
               arr.select do |element|
                 element.odd?
               end
             end

p sorted_arr