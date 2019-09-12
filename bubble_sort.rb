
def bubble_sort(array)
  status = true

  while status
    status = false
    i      = 0

    while (i < (array.length - 1))

      current_element = array[i]
      next_element    = array[i + 1]

      if current_element > next_element

        array[i]     = next_element
        array[i + 1] = current_element
        status       = true
      end
      i += 1
    end
  end
  array
end