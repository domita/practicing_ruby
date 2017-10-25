def solution(array)
  pairs_counter = 0

  array.each.with_index do |x, index|
    if x == 0 
      array.each.with_index do |y, index2|
        pairs_counter += 1 if y == 1 && index2 > index   
      end  
    end 
  end
  pairs_counter > 1000000000 ? -1 : pairs_counter    
end

print solution([0,1,0,1,1])

