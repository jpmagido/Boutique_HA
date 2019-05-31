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

    Item.create(name: 'Bella Baya', description: "Une jeune femme se promène dans un jardin. Elle est belle, lumineuse, avec ses cheveux lâchés au vent, sa robe aux couleurs chatoyantes et les bracelets cliquant à ses poignets. Son atout séduction ? Ce n'est pas le sourire mystérieux s'attardant au coin de ses lèvres. Ni même son regarde vif et pétillant. Mais les notes fruitées et fleuries dont elle se pare : Bella Baya..", price: '98', image_url: 'https://www.antonius.paris/app/images/frontend/products/bella-baya/bella-baya-1.jpg')
    Item.create(name: 'Obscure Alba', description: "C'est une soirée faite de paillettes, de plumes, de perles et de démesure. Les robes a franges sont étincelantes, les bijoux qui ornent les coiffures sont décadents. L'atmosphère est baignée de champagne et les coupes en cristal s'entrechoquent. Soudain la foule se fige comme si le temps venait d'être suspendu. Tous les regards suivent cette femme qui déambule élégamment, aussi belle que mystérieuse. Dans son sillage, un parfum enivrant séduit les hommes et ravit les femmes. Une fragrance hypnotique du nom d'Obscure Alba.", price: '71', image_url: 'https://www.antonius.paris/app/images/frontend/products/obscure-alba/obscure-alba-1.jpg')
    Item.create(name: 'Lady Chérame', description: "Le soleil a bien des pouvoirs. Quand ses rayons passent au travers des feuilles de palme, les ombres forment alors le plus sensuel des habits sur la peau bronzée d'une femme. Comme s'il s'agissait d'un voile de dentelle, les motifs épousent les courbes, révélant toute la sensualité féminine. Lady Chérame incarne cette femme voluptueuse et solaire grâce à son parfum floral et fruité.", price: '78', image_url: 'https://www.antonius.paris/app/images/frontend/products/lady-cherame/lady-cherame-1.jpg')
    Item.create(name: 'Obscure Alba Intense', description: "Les nuits de fête sont sans fin. La femme qui se moque de l'aube et profite des fastes de la nuit séduit par son impertinence. Esprit rebelle à la beauté magnétique, elle s'amuse à jouer l'insaisissable. Cette silhouette imperceptible laisse une seule empreinte, celle de son parfum captivant et teinté de fleurs : Obscure Alba Intense.", price: '83', image_url: 'https://www.antonius.paris/app/images/frontend/products/obscure-alba-intense/obscure-alba-intense-1.jpg')
  end


# 1.times do
#   Cart.create!(item_id: rand(Item.first.id..Item.last.id), user_id: rand(User.first.id..User.last.id))
# end

def perfom
  destroy_table_instances
  #create_users
  create_items
end

perfom

puts "Seed Done !! 😏"
