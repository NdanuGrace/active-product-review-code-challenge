# This will delete any existing rows from the Product and User tables
# so you can run the seed file multiple times without having duplicate entries in your database
require "faker"

puts "Deleting old data..."
Product.destroy_all
User.destroy_all

puts "Creating users..."
user1 = User.create(name: Faker::Name.name)
user2 = User.create(name: Faker::Name.name)
user3 = User.create(name: Faker::Name.name)

puts "Creating products..."
product1 = Product.create(name: "Stapler", price: 10)
product2 = Product.create(name: "Whiteboard", price: 15)
product3 = Product.create(name: "Dry Erase Markers", price: 5)
product4 = Product.create(name: "Ballpoint Pens", price: 2)
product5 = Product.create(name: "Scotch Tape", price: 3)

puts "Creating reviews..."
# *****************************************************************
# * TODO: create reviews! Remember, a review belongs to a product *
# * and a review belongs to an user.                              *
# *****************************************************************
# Create Reviews Here
review1 = Review.create(star_rating: 1, comment: "The product is of poor quality", user_id: 1, product_id:1)
review2 = Review.create(star_rating: 2, comment: "The product not upto standard", user_id: 3, product_id:3)
review3 = Review.create(star_rating: 3, comment: "The product is average", user_id:2, product_id: 2)
review4 = Review.create(star_rating: 4, comment: "The product is somehow good quality", user_id: 3, product_id: 2)
review5 = Review.create(star_rating: 5, comment: "The product is of good quality", user_id: 3, product_id: 4)
review6 = Review.create(star_rating: 5, comment: "The product is of good quality", user_id:2, product_id: 5)



puts "Seeding done!"