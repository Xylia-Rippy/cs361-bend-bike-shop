class Bike
  # Encapsulate constants as private for internal use.
  STANDARD_WEIGHT = 200 # lbs
  MAX_CARGO_ITEMS = 10

  # Expose only necessary attributes with specific readers and writers.
  attr_reader :id, :color, :price, :weight, :cargo_contents
  attr_accessor :rented

  def initialize(id, color, price, weight = STANDARD_WEIGHT, rented = false)
    @id = id
    @color = color
    @price = price
    @weight = weight
    @rented = rented
    @cargo_contents = []
  end

  # Public method to rent the bike, modifying its state.
  def rent!
    self.rented = true
  end

  # Public method to add an item to the cargo.
  def add_cargo(item)
    raise 'Pannier is full' if pannier_remaining_capacity.zero?

    cargo_contents << item
  end

  # Public method to remove an item from the cargo.
  def remove_cargo(item)
    cargo_contents.delete(item)
  end

  # Public method to get the bike's remaining pannier capacity.
  def pannier_remaining_capacity
    MAX_CARGO_ITEMS - cargo_contents.size
  end

  private

  # Expose MAX_CARGO_ITEMS through a method if needed, keeping the constant private.
  def pannier_capacity
    MAX_CARGO_ITEMS
  end
end
