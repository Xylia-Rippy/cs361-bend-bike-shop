=begin
Name: Xylia Rippy
Term: Fall 2024
Class: CS 361
=end

class Player
  attr_accessor :name, :score #create instance variables
  def initialize(name,score) #create initialize method
    @name = name
    @score = score
  end
end

  player = [] #create empty array named players
  num_players = 50 #number of players

  (1 ..num_players).each do |i| #create 50 instances of class
    rand_score = rand(10..300) #random number between 10 and 300
    player << Player.new("Ready Player #{i}!", rand_score) #create new instance of class with a player 
    #and a score variable
  end

  player.each do |player| #iterate through each player
    puts "#{player.name}, Score: #{player.score}" #print out each player and their score
  end