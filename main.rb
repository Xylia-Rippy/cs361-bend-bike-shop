#!/usr/bin/env ruby

require_relative 'bike'

# Create a new bike instance.
bike = Bike.new(1, :pink, 99.99)

# Add items to the cargo.
bike.add_cargo(:apples)
bike.add_cargo(:water)
bike.add_cargo(:repair_kit)

# Print the remaining capacity.
puts "Space for #{bike.pannier_remaining_capacity} items left."

# Rent the bike.
bike.rent!

# Confirm that the bike is rented.
puts "The bike is now rented!" if bike.rented
