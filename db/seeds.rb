# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#

#first create some users and save them into variables
#create some products and save into variables
#make a basket for each user
#make some line_items to connect some product to user baskets and make sure thre is quantity as well.
#do some debugging output which test those associations

puts "creating users....."

User.destroy_all

user1 = User.create! email:'david@ga.co', password:'pass', username:'david_sei', image:"https://place-puppy.com/300x500"

user2 = User.create! email:'luke@ga.co', password:'pass', username:'luke_sei', image:"https://place-puppy.com/300x400"

user3 = User.create! email:'zara@ga.co', password:'pass', username:'zara_sei', image:"https://place-puppy.com/300x600"



# puts "creating products"
#
# Product.destroy_all
#
# product1 = Product.
#
#
# t.string :title
# t.string :brand
# t.string :department
# t.text :description
# t.decimal :price, precision:10, scale:2
# t.text :image
