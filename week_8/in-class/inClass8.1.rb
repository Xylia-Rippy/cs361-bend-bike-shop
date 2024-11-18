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
def myfunction1(a, b, c)
  return thirdpartydependency(a, b, c)
end

def myfunction2(a, b, c)
  return thirdpartydependency(a, b, c)
end

def myfunction3(a, b, c)
  return thirdpartydependency(a, b, c)
end

def myfunction4(a, b, c)
  return thirdpartydependency(a, b, c)
end

def myfunction5(a, b, c)
  return thirdpartydependency(a, b, c)
end

def myfunction6(a, b, c)
  return thirdpartydependency(a, b, c)
end

def myfunction7(a, b, c)
  return thirdpartydependency(a, b, c)
end

def myfunction8(a, b, c)
  return thirdpartydependency(a, b, c)
end

def myfunction9(a, b, c)
  return thirdpartydependency(a, b, c)
end

def myfunction10(a, b, c)
  return thirdpartydependency(a, b, c)
end

def myfunction11(a, b, c)
  return thirdpartydependency(a, b, c)
end

def myfunction12(a, b, c)
  return thirdpartydependency(a, b, c)
end


