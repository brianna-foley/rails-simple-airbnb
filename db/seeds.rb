# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'
Apartment.destroy_all

puts 'Creating apartments...'

Apartment.create!(
  name: 'Cozy Studio',
  address: Faker::Address.full_address,
  description: 'A single room with everything you need for a comfortable stay.',
  price_per_night: 125,
  number_of_guests: 2
)

Apartment.create!(
  name: 'Bright 3 Bedroom',
  address: Faker::Address.full_address,
  description: 'The perfect place to stay while you see the sights with your family or friends.',
  price_per_night: 350,
  number_of_guests: 6
)

Apartment.create!(
  name: 'Inviting Apartment with Terrace',
  address: Faker::Address.full_address,
  description: 'A 2 bedroom apartment with a terrace overlooking the park.',
  price_per_night: 275,
  number_of_guests: 4
)

Apartment.create!(
  name: 'Modern and Convenient',
  address: Faker::Address.full_address,
  description: 'A simple, yet comfortable space with one bedroom and a luxuriuos bathroom.',
  price_per_night: 230,
  number_of_guests: 2
)

puts 'Finished!'
