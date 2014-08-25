require 'faker'

Category.destroy_all
Product.destroy_all
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
c = []
c << Category.create(
  name: "Air Electric Guitars",
  description: "From basic rock to Xtreme ROCK!",
  image_url: "air.png",
  rank: rand(3)+1,
  active: true
)
c << Category.create(
  name: "Air Electric Bass Guitars",
  description: "No one will notice you, guaranteed.",
  rank: rand(3)+1,
  active: true
)
 c << Category.create(
  name: "Air Acoustic Guitars",
  description: "You can wear sweaters now!",
  rank: rand(3)+1,
  active: true
)
30.times do
  Product.create(
    name: (Faker::Commerce.color + " " + Faker::Team.creature).titleize.chop,
    description: Faker::Lorem.paragraph,
    price: Faker::Commerce.price,
    )
end

products = Product.all
photos = Photo.all

products.each do |product|
  product.categories << c.sample
  product.photos << photos.sample
end

