require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
class Store < ActiveRecord::Base
  has_many :employees
end
class Employee < ActiveRecord::Base
  belongs_to :store
end
@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 2)
@store1.employees.create(first_name: "God", last_name: "Man", hourly_rate: 10)
@store1.employees.create(first_name: "Blah", last_name: "la", hourly_rate: 23)
@store2.employees.create(first_name: "A", last_name: "A", hourly_rate: 1)
