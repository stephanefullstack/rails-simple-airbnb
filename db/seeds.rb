# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "faker"

puts 'Creating 5 fake posts...'

5.times do
  flat = Flat.new(
    name: Faker::Company.name,
    description: Faker::Company.catch_phrase,
    address: "16 villa gaudelet Paris"
  )
  flat.save!
end
puts 'Finished!'
