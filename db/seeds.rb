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

    address:      "Copse Hill, Wimbledon Village",
    description:  "In The Heart Of Wimbledon Village",
    price:        12000,
    area:         7800,
    bedrooms:     8,
    remote_photo_url: "http://res.cloudinary.com/petit-chateau/image/upload/v1510676880/18a083ab-9853-4efb-9b49-b2143e38deb7-0_emchrn.jpg"
  },
  {

    address:      "Highbury Road, Wimbledon Village",
    description:   "Pure elegance",
    price:        10000,
    area:         65000,
    bedrooms:     5,
    remote_photo_url: "http://res.cloudinary.com/petit-chateau/image/upload/v1510676881/07984fbe-38f2-457f-938d-e3d34ebf799c-0_pxdlwv.jpg"
  },
  {

    address:      "Homefield Road, Wimbledon Village",
    description:  "Distinguished flat , fantatsic location",
    price:         7000,
    area:          3000,
    bedrooms:      3,
    remote_photo_url: "http://res.cloudinary.com/petit-chateau/image/upload/v1510676886/homefield4_xyelht.jpg"

  },
{

    address:      "Homepark, Wimbledon Village",
    description:  "This is Living",
    price:         15000,
    area:          7500,
    bedrooms:      5,
    remote_photo_url: "http://res.cloudinary.com/petit-chateau/image/upload/v1510676878/3d1afce0-6e3e-46a9-84e7-d6de3175911b-0_jnlrl0.jpg"
  },
{

    address:      "Roedan Crescent, Wimbledon Village",
    description:  "Absolute decadance",
    price:         20000,
    area:          11300,
    bedrooms:      4,
    remote_photo_url: "http://res.cloudinary.com/petit-chateau/image/upload/v1510676881/3546c0f0-d0b4-4cda-99fa-17318b7c9d97-0_d9260p.jpg"
  },
]
chateau_attributes.each do |chateau|
  Chateau.create(chateau)
end
puts 'Finished!'
