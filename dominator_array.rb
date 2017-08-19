def solution(array)

  array.each.with_index do |x, index|

    new_array = []
 
     array.each.with_index do |y, index2|

       new_array.push(index2) if x == y 
       check_length = 0 
       check_length =  new_array.length if index2 == array.length - 1
       return index if check_length > array.length/2 

    end

  end
  -1
end

print solution([3,4,3,2,3,-1,3,3])

