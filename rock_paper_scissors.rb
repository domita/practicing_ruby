def rock_paper_scissors(string)
  output = []
  array  = string.split('')

  array.each_slice(2) do |element|

    if element[0] == element[1]
      output.push('D')
    elsif element == ['R','P']
      output.push('B')
    elsif element == ['P','R']
      output.push('A')
    elsif element == ['S','P']
      output.push('A')
    elsif element == ['P','S']
      output.push('B')
    elsif element == ['R','S']
      output.push('A')
    elsif element == ['S','R']
      output.push('B')
    end

    if output.last == 'D'
      puts 'DRAW'
    elsif  output.last == 'A'
      puts 'WIN A'
    elsif output.last == 'B'
      puts 'WIN B'
    end

  end

  if output.count('A') > output.count('B')
    'A WINS TOURNAMENT'
  elsif output.count('B') > output.count('A')
    'B WINS TOURNAMENT'
  else
    'DRAW IN TOURNAMENT'
  end

end


