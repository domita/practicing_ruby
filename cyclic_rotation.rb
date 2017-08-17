
def solution(arr, k)

	for i in 1..k

    new_arr = (0..arr.length - 1).to_a

		arr.each_with_index do |x, index|
      case index
        when index == 0 then new_arr[0] = arr[arr.length - 1] 
        when index == arr.length - 1 then new_arr[index] = arr[0] 
   		  else new_arr[index] = arr[index - 1] 
   		end
    end
    
    arr = new_arr
	end

	return arr
end

print solution([3, 8, 9, 7, 6], 3)

