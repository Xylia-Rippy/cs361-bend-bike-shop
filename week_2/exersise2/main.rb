# Name Mangler

# Mangle the name by reversing it or borgifying it

#modifing the name to reverse the name
def modified_name(name=@name)

  #splitting the name into components
  split_name = name.split
  
  #reversing the name components
  reversed_name_components = split_name.reverse
  
  #joining the name components
  reversed_name= reversed_name_components.join(' ')
  
  #assigning the reversed name to the name variable
  name = reversed_name
  
  #returning the name
  return name

end

#modifing the name to borgify the name
def borg_name(name=@name)

  #splitting the name into components
  split_name = name.split

  #adding the borg component
  split_name << "Borg"

  #joining the name components
  borg_name = split_name.join(' ')

  #assigning the borgified name to the name variable
  name = borg_name

  #returning the name
  return name

end

#asking the user for their name
print "Enter your name: "

#assigning the user's name to the name variable
@name = gets.chomp

#displaying the name
puts "New name: #{modified_name}"

#displaying the borgified name
puts "New borg name: #{borg_name}"