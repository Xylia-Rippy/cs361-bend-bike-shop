=begin
Name: Xylia Rippy
Term: Fall 2024
Class: CS 361

Dis: This code allows a Add, Sub, Mul, and Div function to fun under a "bot" named SuperMathyBot.
    This code in coded in the Ruby language.
=end
  
#defines the functions
#v0, v1 are the variables
def add(v0,v1)
  return v0+v1
end

def sub(v0,v1)
  return v0-v1
end

def mul(v0,v1)
  return v0*v1
end

def div(v0,v1)
  if(v1 == 0 || v0 == 0) #stops any form of division by zero
    puts "Error: Division by zero"
    return nil #returns nil (nothing)
  else 
    return v0/v1
  end
end

#main loop
while true
  print "SuperMathyBot> " # prints the prompt 
  user_input = gets.chomp #gets the user input
  if(user_input == "quit") #if the user input is quit it ends the program 
    break
  end
  parts=user_input.split #splits the user input into parts
  if parts.length != 3 #checks if the user input is the correct length (3)
    puts "usage: add|sub|mul|div v0 v1\n       quit"
  next
  end 
  cmd, v0, v1 = parts #defines the parts used
  begin #sets the variables to the correct type (float)
    v0 = Float(v0)
    v1 = Float(v1)

  rescue ArgumentError #if the user input is not a number it will throw an error
    puts "Invalid input: Please use numeric values for v0 and v1"
    next
  end
  
  case cmd #checks the command
    #if the command is add, sub, mul, or div it will run the function
    when "add"
      puts add(v0,v1)
    when "sub"
      puts sub(v0,v1)
    when "mul"
      puts mul(v0,v1)
    when "div"
      result = div(v0, v1)
      #if the result is nil it will not print the result
      puts result unless result.nil?
    else
      #if the command is not add, sub, mul, or div it will print the usage commands
      puts "usage: add|sub|mul|div v0 v1\n       quit"
    end
end