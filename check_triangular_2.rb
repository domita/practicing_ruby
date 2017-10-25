def solution(array)

  new_array = []

  array.each_with_index do |x, index|   

    array.each_with_index do |y, index2|  
  
      array.each_with_index do |z, index3|  

        new_array.push([x, y, z]) if index != index2 && index != index3  && index2 != index3 
      end
    end
  end

  new_array.each do |a|
    a.sort!
    return 1 if (a[0] + a[1] > a[2]) && (a[0] + a[2] > a[1]) && (a[2] + a[1] > a[0])
  end

  0
end

print solution([10, 50, 5, 1])
