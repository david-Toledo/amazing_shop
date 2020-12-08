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

puts "created users: #{User.count}"


puts "creating products....."

Product.destroy_all

product1 = Product.create! title:'tpg modem', brand:'tpg', department:"electronics", description: "Ultrafast Wi-Fi - W-Fi speeds boosted with NitroQAM and 5GHz quad-stream technology to handle even the busiest home networks with ease", price:99.90, image:"https://place-puppy.com/300x500"

product2 = Product.create! title:'samsung tv 55 inches', brand:'samsung', department:"electronics", description: "With 4K X-Reality PRO, every image is upscaled closer to true 4K quality for remarkable clarity Images are sharpened and refined in real time", price:999.90, image:"https://place-puppy.com/300x600"

product3 = Product.create! title:'ethernet cable', brand:'link', department:"electronics", description: "fUniversal Compatibility: This high-speed ethernet cable connects all the hardware destinations on a faster Gigabit Local Area Network (LAN). It is compatible for PC, laptop, computer server, printer, router, modem, networking switch boxe, network media player, NAS, VoIP phone, IP cam, Raspberry Pi 4, PS3, PS4, Nintendo Switch, X-box, cloud data server, patch panel, coupler, hub, smart TV and more with RJ45 connector. It is also backward compatible with Cat5, Cat5e and Cat6 standard.", price:10.00, image:"https://place-puppy.com/300x400"

puts "created products: #{Product.count}"

puts "creating baskets ....."


Basket.destroy_all

basket1 = Basket.create! user_id: user1.id
basket2 = Basket.create! user_id: user2.id
basket3 = Basket.create! user_id: user3.id

puts "created baskets: #{Basket.count}"



puts "creating line_items....."

LineItem.destroy_all

line_item1 = LineItem.create! quantity:5, basket_id:basket1.id, product_id:product1.id
line_item2 = LineItem.create! quantity:3, basket_id:basket2.id, product_id:product1.id
line_item3 = LineItem.create! quantity:10, basket_id:basket3.id, product_id:product1.id
line_item4 = LineItem.create! quantity:8, basket_id:basket1.id, product_id:product2.id
line_item5 = LineItem.create! quantity:2, basket_id:basket2.id, product_id:product2.id
line_item6 = LineItem.create! quantity:9, basket_id:basket3.id, product_id:product3.id
line_item7 = LineItem.create! quantity:15, basket_id:basket1.id, product_id:product3.id


puts "created line_items: #{LineItem.count}"
puts LineItem.pluck :basket_id
