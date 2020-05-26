require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

p "Say a store name"
store_name = $stdin.gets.chomp

@store9 = Store.create(
  name: store_name
)

p @store9.errors[:mens_apparel]

@store9.errors.each do |attribute, message|
  print "#{attribute} : "
  p message
end
