def do_better(string)

  if string[-2] =='e' && string[-1] == 'r'
    string = string.delete(string[-1])
    string + 'st'
  else
    if string[-1] == 'e'
      string + 'r'
    else
      string + 'er'
    end
  end

end

# Task description: https://tausiq.wordpress.com/2009/11/03/anything-you-can-do-i-can-do-better/