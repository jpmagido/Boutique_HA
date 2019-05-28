# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

def destroy_table_instances
  Item.destroy_all
  User.destroy_all

end

def create_users
  20.times do
    User.create(first_name: Faker::Artist.name, last_name: Faker::Hacker.adjective,
    email: Faker::Internet.free_email, adress: Faker::Address.street_address, phone: Faker::Number.leading_zero_number(10), password: "blablabla")
  end
end

def create_items
  20.times do
    Item.create(name: Faker::Commerce.product_name, description: Faker::Lorem.sentence, price: Faker::Commerce.price, image_url: Faker::LoremFlickr.image)
  end
end

def perfom
  destroy_table_instances
  create_users
  create_items
end

perfom

puts "Seed Done !! 😏"
