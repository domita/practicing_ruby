def diamond_word(string)
  output = [string]
  length = string.length

  if length % 2 == 0
    n = (string.length - 2)/2
  else
    n = (string.length - 1)/2
  end

  n.times do
    string = string[1..-2]
    output.push(string)
    output.unshift(string)
  end

  output.each_with_index do |x, index|
    substring = ' ' * ((length - x.length)/2)
    puts substring + x + substring
  end

  nil
end

