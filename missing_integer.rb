
def solution(array)
    
  new_array = (1..array.length + 2).to_a 
    
  new_array.each do |x|

    array.each_with_index do |y, index|
      break if x == y 
      return x if array.length - 1 == index && y != x 
    end

  end

end

puts solution([-4,1,1,2])

# Alternative solution 

# def solution(array)
#   i=1
#   until i == array.length + 2
#     return i unless array.include?(i)
#     i += 1
#   end

# end

# puts solution([1,2,3])




