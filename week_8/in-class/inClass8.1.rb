=begin
And guess what! The third party has just deprecated the function:

third_party_dependency_that_changes_frequently()
so we can't use it anymore.

But it's OK—they've replaced it with a new one:

third_party_dependency_that_changes_very_frequently()
Oh, and one more thing: the order of the arguments has changed:

third_party_dependency_that_changes_very_frequently(b, a, c)
That durned Third Party! This is the 15th time they've changed that function this year! And you just know they're going to do it again!

What to turn in
Your task is to modify the above code so that it:

Uses the new argument order.
Uses the new function name.
Is refactored so that the next time Third Party changes the function you only have to modify it in one place!
=end


#functoin wrapper to only call the third party function
def thirdpartydependency(a, b, c)
  return third_party_dependency_that_changes_very_frequently(b, a ,c)
end

#given functoins
def myfunction1()
  return thirdpartydependency(a, b, c)
end

def myfunction2()
  return thirdpartydependency(a, b, c)
end

def myfunction3()
  return thirdpartydependency(a, b, c)
end

def myfunction4()
  return thirdpartydependency(a, b, c)
end

def myfunction5()
  return thirdpartydependency(a, b, c)
end

def myfunction6()
  return thirdpartydependency(a, b, c)
end

def myfunction7()
  return thirdpartydependency(a, b, c)
end

def myfunction8()
  return thirdpartydependency(a, b, c)
end

def myfunction9()
  return thirdpartydependency(a, b, c)
end

def myfunction10()
  return thirdpartydependency(a, b, c)
end

def myfunction11()
  return thirdpartydependency(a, b, c)
end

def myfunction12()
  return thirdpartydependency(a, b, c)
end


