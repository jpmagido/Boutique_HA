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
end

def create_items
  20.times do
    Item.create(name: Faker::Commerce.product_name, description: Faker::Lorem.sentence, price: Faker::Commerce.price, image_url: Faker::LoremFlickr.image)
  end
end

# 1.times do
#   Cart.create!(item_id: rand(Item.first.id..Item.last.id), user_id: rand(User.first.id..User.last.id))
# end

def perfom
  destroy_table_instances
  create_items
end

perfom

puts "Seed Done !! :)"
