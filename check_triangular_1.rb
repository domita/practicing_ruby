
def solution(array)

  new_array = array.permutation(3).to_a

  new_array.each do |a|
    a.sort!
    return 1 if (a[0] + a[1] > a[2]) && (a[0] + a[2]) > (a[1] && a[2] + a[1] > a[0])
  end

  0
end

print solution([10, 2, 5, 1, 8, 20])


 



