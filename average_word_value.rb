def average_word_value(string)
  array = string.upcase.split.map do |element|
    element.split('')
  end

  array.each_with_index do |element,index|

    element.each_with_index do |x, index|

      if x.ord > 64 && x.ord < 91
        element[index] = x.ord
      else
        element[index] = 0
      end

    end
    element.delete(0)
    array[index] = array_average(element)
  end

  output = array_average(array).round
  "THE AVERAGE WORD VALUE IS #{output}"
end

def array_average(array)
  average = array.inject(:+).to_f/array.count
end




