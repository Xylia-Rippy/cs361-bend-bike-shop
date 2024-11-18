=begin
Dependency Injection Challenge
We have an issue with the following code. We want to make multiple instances of the Divider class, but we want them to use different logging systems. Right now it's hardcoded to only use class Logger, but we have some different loggers, some of which operate over the network, etc.

How can we make it so that we can have different Dividerss use different Loggers?

What to turn in
The above code modified to use dependency injection to solve the problem.
=end

class Logger
  def event(s)
    puts s
  end

  def warning(s)
    warn s
  end
end

$logger = Logger.new

class Divider
  def divide(a, b)
    if b == 0
      $logger.warning("division by zero")
      return nil
    end
    $logger.event("dividing #{a} by #{b}")
    a / b
  end
end

d = Divider.new

d.divide(1,2)
d.divide(10,5)
d.divide(99,0)