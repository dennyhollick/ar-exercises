require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

@mil_ann_rev = Store.where("annual_revenue > ?", 1000000)

puts "Annual Revenue #{Store.sum(:annual_revenue)}"
puts "Avg Revenue #{Store.average(:annual_revenue)}"

puts "Stores with > 1M = #{@mil_ann_rev.count}"