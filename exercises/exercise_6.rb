require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative '../lib/employee'

puts "Exercise 6"
puts "----------"

@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Denny", last_name: "Hollick", hourly_rate: 60)
@store2.employees.create(first_name: "John", last_name: "Doe", hourly_rate: 60)
@store2.employees.create(first_name: "John", last_name: "Dude", hourly_rate: 60)
@store2.employees.create(first_name: "John", last_name: "Hello", hourly_rate: 60)

puts Employee.count