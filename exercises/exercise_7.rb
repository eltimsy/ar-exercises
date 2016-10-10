require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...
class Employee < ActiveRecord::Base
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates_inclusion_of :hourly_rate, in: 40..200
  validates :store_id, presence: true
end
class Store < ActiveRecord::Base
  validate :must_contain_cloths, on: :create

  def must_contain_cloths
    if mens_apparel.present? == false && womens_apparel.present? == false
      errors.add(:mens_apparel, "You need to have some cloths")
    end
  end

  validates :name, length: {minimum: 3}
  validates :annual_revenue, presence: true
  validates_inclusion_of :annual_revenue, in: 0..Float::INFINITY
end
puts "write a store name!"
@storename = gets.chomp
s = Store.create(name: @storename, annual_revenue: 50)
puts s.errors.messages
