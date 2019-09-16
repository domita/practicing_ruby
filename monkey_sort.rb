def monkey_sort(array)

  status = true

  while status
    status = false
    array  = array.shuffle

    array.each_with_index do |element, index|

      next_element     = array[index + 1]
      previous_element = array[index -1]

      if index == (array.length - 1)
        if element < previous_element
          status = true
        end
      else
        if element > next_element
          status = true
        end
      end

    end
  end

  array
end