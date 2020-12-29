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

user1 = User.create! email:'david@ga.co', password:'pass', username:'david_sei', image:"https://place-puppy.com/300x500", admin:true

user2 = User.create! email:'luke@ga.co', password:'pass', username:'luke_sei', image:"https://place-puppy.com/300x400"

user3 = User.create! email:'zara@ga.co', password:'pass', username:'zara_sei', image:"https://place-puppy.com/300x600"

puts "created users: #{User.count}"


puts "creating products....."

Product.destroy_all

product1 = Product.create! title:'PS4', brand:'Sony', department:"electronics", description: "Ultrafast Wi-Fi - W-Fi speeds boosted with NitroQAM and 5GHz quad-stream technology to handle even the busiest home networks with ease", price:299.90, image:"https://lh3.googleusercontent.com/pw/ACtC-3coj38_qd7IFeMcnsPKyKRV7iYyzNH77ikZICRzinXxgdD6-KTeoejGYiAqLQFRqmheEenhnauSi12wxbPQiiAWdRwjWm0-j3Z4ObbKvf5Kw7eOc-ItTO8NNnMNsSxqlOe13Tacni_vfAJipfcjs2s4og=w640-h359-no?authuser=0"

product2 = Product.create! title:'samsung tv 55 inches', brand:'samsung', department:"electronics", description: "With 4K X-Reality PRO, every image is upscaled closer to true 4K quality for remarkable clarity Images are sharpened and refined in real time", price:999.90, image:"https://lh3.googleusercontent.com/pw/ACtC-3cFE7gBRY4eQGE0zTgFkg8gQK3iefIzW6zF7gS9PZzL3OHwBnL950dJPXTrYcoTBeQKO5qVdsRkDB8LQqpVvbcATRM209Rn7QhGjJDk5V9T3gPubZkKxaV14mJ1unF0ZzqAudwe1DkDd1Gjl8j4xzEMHA=w720-h576-no?authuser=0"

product3 = Product.create! title:'ethernet cable', brand:'link', department:"electronics", description: "fUniversal Compatibility: This high-speed ethernet cable connects all the hardware destinations on a faster Gigabit Local Area Network (LAN). It is compatible for PC, laptop, computer server, printer, router, modem, networking switch boxe, network media player, NAS, VoIP phone, IP cam, Raspberry Pi 4, PS3, PS4, Nintendo Switch, X-box, cloud data server, patch panel, coupler, hub, smart TV and more with RJ45 connector. It is also backward compatible with Cat5, Cat5e and Cat6 standard.", price:10.00, image:"https://lh3.googleusercontent.com/pw/ACtC-3cvsjlEooiQWUOedFvAgxSObDgzG-gZtHGsQudL5TJ1sE-eWNg7npJTOMXw4apnE6yvCY8EOG-kX4Uw-FnACN-SFDAmc4aUpiF4gaH39dYMX43gou9LSWJKL0zznOC3msjQaEqZSGZ3h50S6_sgPMjzdg=s384-no?authuser=0"

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

puts "creating orders....."

Order.destroy_all

order1=Order.create! user_id: user1.id, total:500
order2=Order.create! user_id: user2.id, total:500
order3=Order.create! user_id: user3.id, total:500
order4=Order.create! user_id: user1.id, total:800
order5=Order.create! user_id: user2.id, total:900
order6=Order.create! user_id: user3.id, total:900


puts "created orders: #{Order.count}"
# puts Order.pluck :basket_id


OrderItem.destroy_all

order_item1 = OrderItem.create! quantity:1, order_id:order1.id, product_id:product1.id, subtotal:500
order_item2 = OrderItem.create! quantity:2, order_id:order2.id, product_id:product1.id, subtotal:500
order_item3 = OrderItem.create! quantity:3, order_id:order3.id, product_id:product1.id, subtotal:400
order_item4 = OrderItem.create! quantity:4, order_id:order4.id, product_id:product2.id, subtotal:600
order_item5 = OrderItem.create! quantity:5, order_id:order5.id, product_id:product2.id, subtotal:900
order_item6 = OrderItem.create! quantity:6, order_id:order6.id, product_id:product2.id, subtotal:700
order_item7 = OrderItem.create! quantity:7, order_id:order1.id, product_id:product3.id, subtotal:1500
order_item8 = OrderItem.create! quantity:8, order_id:order2.id, product_id:product3.id, subtotal:1500
order_item9 = OrderItem.create! quantity:9, order_id:order3.id, product_id:product3.id, subtotal:1500
order_item10 = OrderItem.create! quantity:10, order_id:order4.id, product_id:product3.id, subtotal:600
order_item11 = OrderItem.create! quantity:11, order_id:order5.id, product_id:product3.id, subtotal:900
order_item12 = OrderItem.create! quantity:12, order_id:order6.id, product_id:product3.id, subtotal:700
