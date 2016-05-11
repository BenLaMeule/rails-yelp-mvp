# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Restaurant.destroy_all

5.times do
  restaurant = Restaurant.new({
    name: Faker::Company.name,
    address: "#{Faker::Address.street_address}, #{Faker::Address.city}",
    category: Restaurant::CATEGORIES.sample,
    phone_number: Faker::PhoneNumber.phone_number
  })
  (1..10).to_a.sample.times do
    review = Review.new({
        content: Faker::Hipster.paragraph,
        rating: (0..5).to_a.sample
      })
    restaurant.reviews << review
  end
  restaurant.save
end
