# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'
Photo.destroy_all
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

photos_urls = [
  [
    {remote_photo_url: "http://res.cloudinary.com/petit-chateau/image/upload/v1510676880/18a083ab-9853-4efb-9b49-b2143e38deb7-0_emchrn.jpg"},
    {remote_photo_url: "http://res.cloudinary.com/petit-chateau/image/upload/v1510676885/fdb68e82-8557-4d41-9448-05ca6c13d5bd-0_b9k7qn.jpg"}
  ],
  [
    {remote_photo_url: "http://res.cloudinary.com/petit-chateau/image/upload/v1510676879/584ca379-5c36-4a63-9b2f-1c665d93957a-0_h1vi80.jpg"},
    {remote_photo_url: "http://res.cloudinary.com/petit-chateau/image/upload/v1510676878/3d1afce0-6e3e-46a9-84e7-d6de3175911b-0_jnlrl0.jpg"},
    {remote_photo_url: "http://res.cloudinary.com/petit-chateau/image/upload/v1510676881/3546c0f0-d0b4-4cda-99fa-17318b7c9d97-0_d9260p.jpg"}
  ],
  [

    {remote_photo_url: "http://res.cloudinary.com/petit-chateau/image/upload/v1510676881/3546c0f0-d0b4-4cda-99fa-17318b7c9d97-0_d9260p.jpg"},
    {remote_photo_url: "http://res.cloudinary.com/petit-chateau/image/upload/v1510676880/18a083ab-9853-4efb-9b49-b2143e38deb7-0_emchrn.jpg"}
  ],
  [
    {remote_photo_url: "http://res.cloudinary.com/petit-chateau/image/upload/v6928144f-2977-4e50-b8ce-02619d792704-0_ypyn9p.jpg"},
    {remote_photo_url: "http://res.cloudinary.com/petit-chateau/image/upload/vade65b5e-19c1-4ceb-a44b-c5c2a8803927-0_q1b7ia.jpg"},
    {remote_photo_url: "http://res.cloudinary.com/petit-chateau/image/upload/vfdb68e82-8557-4d41-9448-05ca6c13d5bd-0_b9k7qn.jpg"},
    {remote_photo_url: "http://res.cloudinary.com/petit-chateau/image/upload/v1510676880/18a083ab-9853-4efb-9b49-b2143e38deb7-0_emchrn.jpg"},
    {remote_photo_url: "http://res.cloudinary.com/petit-chateau/image/upload/v1510676882/a89a9075-e456-473f-b246-f725c6a6e156-0_grehav.jpg"}

  ],
  [
    {remote_photo_url: "http://res.cloudinary.com/petit-chateau/image/upload/v1510676879/584ca379-5c36-4a63-9b2f-1c665d93957a-0_h1vi80.jpg"},
    {remote_photo_url: "http://res.cloudinary.com/petit-chateau/image/upload/v1510676880/18a083ab-9853-4efb-9b49-b2143e38deb7-0_emchrn.jpg"}

  ]
]


chateau_attributes.each do |chateau|
  Chateau.create(chateau)
  photos_urls[0].each do |photo_url|
    Chateau.last.photos.create(photo_url)
  end
  photos_urls.delete_at(0)
end
puts 'Finished!'
