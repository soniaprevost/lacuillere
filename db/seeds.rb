# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
category_array = ["chinese", "italian", "japanese", "french", "belgian"]

Restaurant.destroy_all
5.times do
  restaurant = Restaurant.new({
    name: Faker::Company.name,
    address: Faker::Address.street_address,
    category: category_array.sample,
    phone_number: Faker::PhoneNumber.phone_number,
    })
  restaurant.save
end
