
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

# alternative solutions

# def bubble_sort(array)
#   status = true

#   while status
#     status = false

#     array.each_with_index do |element|

#       current_element = array[index]
#       next_element    = array[index + 1]

#       if current_element > next_element
#         array[index]     = next_element
#         array[index + 1] = current_element
#         status           = true
#       end

#     end
#   end
#   array
# end


# def bubble_sort(array)
#   status = true

#   while status
#     status = false
#     i      = 0

#     for i in (array_length - 1) do

#       current_element = array[i]
#       next_element    = array[i + 1]

#       if current_element > next_element
#         array[i]     = next_element
#         array[i + 1] = current_element
#         status       = true
#       end

#     end
#   end
#   array
# end