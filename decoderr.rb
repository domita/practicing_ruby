def decoder(string)

  array      = ('A'..'Z').to_a
  dictionary = {}
  output     = []

  array.each_with_index do |x, index|
    dictionary[x] = (index + 1).to_s
  end

  chars  = string.split
  status = false

  chars.each do |element|

    if !status && ('1'..'23').include?(element)
      output.push(dictionary.key(element))
    else
      output.push(element)
    end

    if status && !('1'..'9').include?(element)
      status = false
    end

    if element == '#'
      status = true
    end

  end
  output.delete('#')
  output.join.gsub!('_' , ' ')
end

# Task description: https://tausiq.wordpress.com/2009/09/18/decoder/