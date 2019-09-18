def diamond_word(string)
  output = [string]
  length = string.length

  if length % 2 == 0
    n = (length - 2)/2
  else
    n = (length - 1)/2
  end

  n.times do
    string = string[1..-2]
    output.push(string)
    output.unshift(string)
  end

  output.each do |x|
    substring = ' ' * ((length - x.length)/2)
    puts substring + x + substring
  end

  nil
end

# Task descripiton: https://tausiq.wordpress.com/2009/09/27/diamond-word/