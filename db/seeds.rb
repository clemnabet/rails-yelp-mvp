# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# creating restaurants

5.times do |_variable|
  Restaurant.create(
    name: Faker::Restaurant.name,
    category: ['chinese', 'italian', 'japanese', 'french', 'belgian'].sample,
    address: Faker::Address.street_address,
    phone_number: Faker::PhoneNumber.phone_number_with_country_code
  )
end
