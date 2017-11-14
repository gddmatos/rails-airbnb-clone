# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'
Chateau.destroy_all

puts 'Showing Homes...'
chateau_attributes = [
  {

    address:      "Copse Hill",
    description:  "In The Heart Of Wimbledon Village",
    price:        12000,
    area:         7800,
    bedrooms:     8
  },
  {

    address:      "Highbury Road",
    description:   "Pure elegance",
    price:        10000,
    area:         65000,
    bedrooms:     5
  },
  {

    address:      "Homefield Road",
    description:  "Distinguished flat , fantatsic location",
    price:         7000,
    area:          3000,
    bedrooms:      3
  },
{

    address:      "Homepark",
    description:  "This is Living",
    price:         15000,
    area:          7500,
    bedrooms:      5
  },
{

    address:      "Roedan Crescent",
    description:  "Absolute decadance",
    price:         20000,
    area:          11300,
    bedrooms:      4
  },
]
chateau_attributes.each do |chateau|
  Chateau.create(chateau)
end
puts 'Finished!'
