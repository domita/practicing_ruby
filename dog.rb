def dog(array)

  treats = []

  array.length.times do
    treats.push(1)
  end

  array.each_with_index do |element, index|

    next_element        = array[index + 1]
    previous_element    = array[index - 1]
    penultimate_element = array[-2]

    if index == 0
      if element > next_element
        treats[index] += 1
      end
    elsif index == (array.length - 1)
      if element > penultimate_element
        treats[index] += 1
      end
    else
      if element > next_element
        treats[index] += 1
      end
      if element > previous_element
        treats[index] += 1
      end
    end

  end
  treats
end
