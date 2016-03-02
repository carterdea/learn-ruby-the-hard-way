# Animal is-a object look at the extra credit
class Animal
end

# Dog is a class that inherits from the Animal class
class Dog < Animal
  def initialize(name)
    # Every dog has-a name
    @name = name
  end
end

# Cat is a class that inherits frmo the Animal class
class Cat < Animal
  def initialize(name)
    # Cat has-a name
    @name = name
  end
end

class Person
  def initialize(name)
    # Person has-a name
    @name = name

    # Person has-a pet of some kind
    @pet = nil
  end

  attr_accessor :pet
end

# every Employee is-a Person
class Employee < Person
  def initialize(name, salary)
    # every employee has-a name inherited from the person
    super(name)

    # every person has-a salary
    @salary = salary
  end
end

# Fish is-a Animal
class Fish < Animal
  def jump
    puts ''
  end
end

# Salmon is-a Fish
class Salmon < Fish
end

# Halibut is-a Fish
class Halibut < Fish
end

# rover is-a Dog
rover = Dog.new('Rover')

# satan is-a Cat
satan = Cat.new('Satan')

# mary is-a Perosn
mary = Person.new('Mary')

# mary has-a pet cat (satan)
mary.pet = satan

# frank is-a employee
frank = Employee.new('Frank', 120_000)

# frank has-a pet (rover)
frank.pet = rover

# flipper is-a Fish
flipper = Fish.new

# crouse is-a Salmon
crouse = Salmon.new

# harry is-a Halibut
harry = Halibut.new
