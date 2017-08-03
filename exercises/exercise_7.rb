require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

puts "Enter a store name"

store_name = gets.chomp

create_store = Store.create name: "#{store_name}"

if !create_store.valid?
  pp create_store.errors.messages
end


