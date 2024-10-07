# Define the Employee class
class Employee
  attr_accessor :name, :position, :salary

  def initialize(name, position, salary)
    @name = name
    @position = position
    @salary = salary
  end

  def to_s
    "Name: #{@name}, Position: #{@position}, Salary: $#{@salary}"
  end
end

# Populate an array with sample employee data
employees = [
  Employee.new("Alice", "Manager", 60000),
  Employee.new("Bob", "Developer", 50000),
  Employee.new("Charlie", "Designer", 45000)
]

# Function to update all employee salaries by a given amount
def pay_raise(employees, amount)
  employees.each { |employee| employee.salary += amount }
end

# Display original employee data
puts "Original employee data:"
employees.each { |employee| puts employee }

# Update all salaries by $5000
pay_raise(employees, 5000)

# Display updated employee data
puts "\nUpdated employee data:"
employees.each { |employeeUpdated| puts employeeUpdated }