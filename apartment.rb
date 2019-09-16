class Apartment

  attr_reader :address

  def initialize(address)
    @address = address
    @rooms = []
  end

  def put_room(new_room)
    @rooms.push(new_room)
  end

  def list_rooms
    @rooms
  end

  def count_rooms
    @rooms.size
  end

  def describe
    puts "In apartment #{address} are #{count_rooms} rooms."
    @rooms.each_with_index do |room, index|
      puts "In room #{index + 1} are:"
      room.describe
    end
    nil
  end

end

class Room
  def initialize
    @equipment = []
  end

  def put_equipment(new_equpiment)
    @equipment.push(new_equpiment)
  end

  def list_equipment
    @equipment
  end

  def describe
    @equipment.each do |equpiment|
      equpiment.describe
    end
    nil
  end
end

class Furniture
  def initialize(description, size)
    @description = description
    @size = size
  end
  def describe
    puts @description
  end
end

class ElectricDevice
  def initialize(model)
    @model = model
  end
  def describe
    puts @model
  end
end

class Animal
  def initialize(species)
    @species = species
  end
  def describe
    puts @species
  end
end


class Chair < Furniture
  def initialize(soft, condition)
    @soft = soft
    @condition = condition
    super('for sitting', 'small')
  end
end

class Table < Furniture
  def initialize(shape)
    @shape = shape
    super('for eating', 'medium')
  end
end

class Wardrobe < Furniture
  def initialize(color)
    @color = color
    super('for clothes', 'big')
  end
end

class Bed < Furniture
  def initialize(capacity)
    @capacity = capacity
    super('for sleep', 'big')
  end
end

class TV < ElectricDevice
   def initialize(screen_size)
    @screen_size = screen_size
    super('Samsung')
  end
end

class Router < ElectricDevice
   def initialize(stability)
    @stability = stability
    super('TPLink')
  end
end

class Mobile < ElectricDevice
   def initialize(number, owner)
    @number = number
    @owner = owner
    super('Nokia')
  end
end

class Human < Animal
   def initialize(name, gender)
    @name = name
    @gender = gender
    super('mammal')
  end
end

class Fly < Animal
   def initialize(size)
    @size = size
    super('insect')
  end
end
