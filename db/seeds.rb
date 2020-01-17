# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Product.destroy_all
Review.destroy_all


15.times do |index|
  products = []
  products.push(Product.create!(prod_name: Faker::TvShows::BreakingBad.episode,
    cost: Faker::Number.number(digits: 1), country_of_origin:Faker::Lorem.words(number: 1, supplemental: true)))
    products
    rand(3..15).times do |review|
      products.each do |product|
        Review.create! :author => Faker::Superhero.name, :content_body => Faker::Lorem.characters(number: 55, min_alpha: 4), :rating => rand(1..5),
        :product_id => product.id
      end
    end
  end

  p "Created #{Product.count} products"
