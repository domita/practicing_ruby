def card_value(string)

  dictionary = {
    'A' => '11',
    'J' => '10',
    'Q' => '10',
    'K' => '10'
  }

  array = string.split.map do |x|
    if dictionary[x[0]]
      dictionary[x[0]] + x[1]
    else
      x
    end
  end

  number_array = array.map do |x|
    x = x.delete(x[-1])
    x.to_i
  end

  sum    = number_array.inject(:+)
  status = []
  array  = array.join.split('')

  status.push(1) if array.include?('C')
  status.push(1) if array.include?('D')
  status.push(1) if array.include?('H')
  status.push(1) if array.include?('S')

  total_status = status.inject(:+)

  sum += 10 if total_status == 2
  sum += 25 if total_status == 1

  sum
end

# card_value("2C 10H AD KH 4S")
# Task description: https://tausiq.wordpress.com/2009/10/11/card-value/