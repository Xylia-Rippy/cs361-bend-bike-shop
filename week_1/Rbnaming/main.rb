=begin
Name: Xylia Rippy
Term: Fall 2024
Class: CS 361
=end


class Bike
  # ...
end

class RedBicycle < Bike

  WEIGHT_DECREASE = 10 #changed it to better fit the reduction meaning

  #renamed the a,b,c to height, weight, color to better git the meaning
  def initialize(height, weight, color)
    @height = height
    @weight = weight
    @color = color
  end

  def getColor
    @color
  end

  def retreive_height
    @height
  end

  def change_weight
    @weight -= WEIGHT_DECREASE
  end
end