require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


jim = Manager.new("jim", "fighting",5)
tim = Manager.new("tim", "eating",21)
lim = Manager.new("lim", "housing",32)

bob = Employee.new("bob", jim, 30000)
mob = Employee.new("mob", tim, 1000)
tob = Employee.new("tob", lim, 700000)

binding.pry
puts "done"
