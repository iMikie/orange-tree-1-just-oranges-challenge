# This is how you define your own custom exception classes
class NoOrangesError < StandardError
end

class OrangeTree
  attr_reader :age, :height

  def initialize
    @age = 0
    @height = 0
    @oranges = []
  end

  # Ages the tree one year
  def age!
    if @age < 100
      @age += 1
      @height = @height >= 200 ? @height : @height + 1 + rand(10)
    else
      @height = 0
    end

    if @age > 5 && !dead?
      rand(3..10).times {  @oranges << Orange.new(rand(1..4)) }
    end
  end

  def dead?
    @age >= 100
  end

  # Returns +true+ if there are any oranges on the tree, +false+ otherwise
  def any_oranges?
    @oranges.length > 0
  end

  # Returns an Orange if there are any
  # Raises a NoOrangesError otherwise
  def pick_an_orange!
    raise NoOrangesError, "This tree has no oranges" unless self.any_oranges?
    @oranges.pop
  end
end

class Orange
  attr_reader :diameter
  # Initializes a new Orange with diameter +diameter+
  def initialize(diameter=1)
    @diameter = diameter
  end

end
