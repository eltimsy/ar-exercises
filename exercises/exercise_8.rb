require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'
require_relative './exercise_7'

puts "Exercise 8"
puts "----------"

class Employee < ActiveRecord::Base
  before_create :set_password
  protected
  def set_password
    self.password = (0...8).map { (65 + rand(26)).chr }.join
    # self.save
  end
end
peeps = @store2.employees.create(first_name: "c", last_name: "d", hourly_rate: 50)
puts peeps[:password]
