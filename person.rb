class Person

  attr_reader :name, :parent
  @@people = []

  def initialize(hash)
    @name = hash[:name]
    @parent = hash[:parent]
  end

  def self.create(hash)
    person = Person.new(hash)
    @@people.push(person)
    person
  end

  def self.people
    @@people
  end

  def children
    @@people.select do |person|
      person.parent == self
    end
  end

end