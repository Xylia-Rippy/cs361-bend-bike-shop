# Identify things wrong in this code
=begin
p and n and s are bad variable names
weird variable initialize 
=end
class P
  attr_accessor :n,:s #attr_accessor allows us to dirctly access n and s

  def initialize(n,s)
    @n,@s=n,s #@ is a instence variable
  end

def to_s
   "RP%d! S%d"%[@n,@s]
   "RP#{@n} S#{@s}" #changed %d to #{@n} and %d to #{@s} allowing to be easily read
  end

end
Array=[] #changed A to Array

50.times{ |i|
  p = P.new(i+1,rand(10..300)) #creating a new object

  Array<<p #<< appends something onto Array(used to be A)
}

Array.each{|p|puts p} #changed A to array.

# How could this code be better?
#un hard code the numbers and change them to names. 
#maybe tab it out a bit more to make it more reasable.
8.times { |i| 8.times { |j| print "#{(i+1)*(j+1)}\t"}; puts } #inner one is a cullom, outer is the rows.

# Ideas for improving this?

# class Person
class Person #added the class method.
  def initialize(name, age)
  @name = name
  @age = age
  end

  def grow_older
    @age += 1
  end

  def what_is_your_age
    if @age
      puts "I am #{@age} years old"
    else
      puts "Age unknown"
    end
  end #Removed end at the bottom

#creating objects
person = Person.new("Alice", 30) #changed p to person

# calling methods
person.grow_older
person.what_is_your_age
end #stops this specific class.

# Or this:

#defines an array of in
def average(arr)
  sum = 0
  for i in arr do
    sum+=i
end
  #sets the average
  count = arr.size 
  avg = sum/count

    return avg
end

#gets a average from a set array.
puts average([1, 2, 3, 4, 5])

