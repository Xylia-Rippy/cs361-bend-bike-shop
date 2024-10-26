# Exercise 5 Part 1 (Exception Handling)
class MentalState
  def auditable?
    # true if the external service is online, otherwise false
  end
  
  def audit!
    # Could fail if external service is offline
  end
  
  def do_work
    # Amazing stuff...
  end
end

class ExternalServiceOfflineError < StandardError; end

def audit_sanity(bedtime_mental_state)
  raise ExternalServiceOfflineError, "External service is offline" unless bedtime_mental_state.auditable?

  if bedtime_mental_state.audit!.ok?
    MorningMentalState.new(:ok)
  else
    MorningMentalState.new(:not_ok)
  end
end

begin
  new_state = audit_sanity(bedtime_mental_state)
rescue ExternalServiceOfflineError => e
  puts "Error: #{e.message}"
else
  new_state.do_work
end


# Exercise 5 Part 2 (Null Object Pattern)
class NullMentalState < MentalState
  def do_work
    # Do nothing, since it's a null object
  end
end

class BedtimeMentalState < MentalState; end
class MorningMentalState < MentalState
  def initialize(state)
    @state = state
  end
end

def audit_sanity(bedtime_mental_state)
  return NullMentalState.new unless bedtime_mental_state.auditable?

  if bedtime_mental_state.audit!.ok?
    MorningMentalState.new(:ok)
  else
    MorningMentalState.new(:not_ok)
  end
end

new_state = audit_sanity(bedtime_mental_state)
new_state.do_work  # Safe to call do_work without checking for nil


# Exercise 5 Part 3 (Wrapping APIs)
require 'candy_service'

class CandyMachineWrapper
  def initialize
    @machine = CandyMachine.new
    @machine.prepare
  end

  def make_candy
    if @machine.ready?
      @machine.make!
    else
      handle_error
    end
  end

  private

  def handle_error
    puts "Error: Candy machine is not ready. Please check the machine and try again."
  end
end

machine_wrapper = CandyMachineWrapper.new
machine_wrapper.make_candy
