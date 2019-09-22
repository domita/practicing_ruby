def remove_duplicate_elements(array)

  elements = {}

  array.each do |x|
    if elements[x]
      elements[x] += 1
    else
      elements[x] = 1
    end
  end

  elements.keys
end

# Task description: https://www.geeksforgeeks.org/remove-duplicate-elements-in-an-array-using-stl-in-c/

