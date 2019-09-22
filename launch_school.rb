def exercise1 (arr)
  arr.each do |number|
    puts number
  end
end

def exercise2 (arr)
  arr.each do |number|
    if number > 5
      puts number
    end
  end
end

def exercise3 (arr)
  arr.select do |number|
    number % 2 != 0
    # number.odd?
  end
end

def exercise4 (arr)
  arr.push(11)
  #arr << 11
  arr.unshift(0)
end
# exercise4([1, 2, 3, 4, 5, 6, 7, 8, 9, 10])

def exercise5 (arr)
  arr.pop
  arr.push(3)
end
# exercise5([1, 2, 3, 4, 5, 6, 7, 8, 9, 10,11])

def exercise6 (arr)
  arr.uniq!
end
# exercise6([1, 2, 3, 4, 5, 6, 7, 8, 9, 11,3])

def exercise8
  hash = {:height => 170} # old syntax
  hash = {height: 170}    # new syntax
end

def exercise9(hash)
  hash[:b]
  hash[:e] = 5

  # hash.each do |key, value|
  #   if value < 3.5
  #     hash.delete(key)
  #   end
  # end

  hash.delete_if do |k,v|
    v < 3.5
  end
end

# exercise9({a:1, b:2, c:3, d:4})

def exercise10
  hash = {heights: [170,180,190]}
  h = {weigths: [40,50,90]}
  array_of_hashes = [hash, h]
end

def exercise12(contact_data, contacts)
  contacts["Joe Smith"][:email] = contact_data[0][0]
  contacts["Joe Smith"][:address] = contact_data[0][1]
  contacts["Joe Smith"][:phone] = contact_data[0][2]
  contacts["Sally Johnson"][:email] = contact_data[1][0]
  contacts["Sally Johnson"][:address] = contact_data[1][1]
  contacts["Sally Johnson"][:phone] = contact_data[1][2]
  contacts
end

# exercise12([["joe@email.com", "123 Main st.", "555-123-4567"],
#             ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]], {"Joe Smith" => {}, "Sally Johnson" => {}} )

def exercise13

  hash = exercise12(
                     [
                      ["joe@email.com", "123 Main st.", "555-123-4567"],
                      ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]
                     ],
                     {"Joe Smith" => {},
                      "Sally Johnson" => {}
                      }
                    )

  email = hash["Joe Smith"][:email]
  phone = hash["Sally Johnson"][:phone]

  puts email
  puts phone
end

def exercise14
  contact_data = ["joe@email.com", "123 Main st.", "555-123-4567"]
  contacts = {"Joe Smith" => {}}

  # contacts_each do |k, v|
  #   contacts[k][:email] = contact_data[0]
  #   contacts[k][:address] = contact_data[1]
  #   contacts[k][:phone] = contact_data[2]
  # end

  fields = [[:email],[:address],[:phone]]

  contacts.each do |k, v|
    fields.each do |field|
      v[field] = contact_data.shift
      # contacts[k][field] = contact_data.shift
    end
  end
end

def exercise15(arr)
  arr.delete_if do |x|
    x.start_with?('s')
  end
  #  arr.delete_if do |x|
  #   x.start_with?('s', 'w')
  # end
end
# exercise15(['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees'])

def exercise16(arr)
  arr.map do |x|
    x.split
  end.flatten
end
# exercise16(['white snow', 'winter wonderland', 'melting ice',
     # 'slippery sidewalk', 'salted roads', 'white trees'])


# Task description: https://launchschool.com/books/ruby/read/intro_exercises