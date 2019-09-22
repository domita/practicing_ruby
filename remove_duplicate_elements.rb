def remove_duplicate_elements(array)

  elements = {}

  array.each do |x|
    # if elements[x]
    #   elements[x] += 1
    # else
    #   elements[x] = 1
    # end

    # a ||= b, a || a = b, a ? a : a = b, if a then a else a = b end
    elements[x] ||= 0
    elements[x] += 1
  end

  elements.keys
end

# Task description: https://www.geeksforgeeks.org/remove-duplicate-elements-in-an-array-using-stl-in-c/

