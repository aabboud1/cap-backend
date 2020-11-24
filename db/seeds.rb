# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Item.destroy_all

Order.destroy_all
OrderItem.destroy_all
Item.create(name: "Couscous",price: rand(1..20), image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRf--VsVjUM5_fCeMAbKlMWuicLoOOJldHK7A&usqp=CAU', category: 'Main')
Item.create(name: "Rfissa",price: rand(1..20), image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS39F8swq9BWhjyuJcJojevzmNgrUBXK01Lcg&usqp=CAU', category: 'Main')
Item.create(name: "Siffa",price: rand(1..20), image: 'https://i.pinimg.com/236x/b3/63/37/b363378a7139ef17593bbf60b7ad1ef7--walima.jpg', category: 'Main')
Item.create(name: "Pastella",price: rand(1..20), image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRf--VsVjUM5_fCeMAbKlMWuicLoOOJldHK7A&usqp=CAU', category: 'Main')
Item.create(name: "Tajine with Meat",price: rand(1..20), image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRf--VsVjUM5_fCeMAbKlMWuicLoOOJldHK7A&usqp=CAU', category: 'Main')
Item.create(name: "Tajine with Chicken",price: rand(1..20), image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRf--VsVjUM5_fCeMAbKlMWuicLoOOJldHK7A&usqp=CAU', category: 'Main')
Item.create(name: "Tajine with Fish",price: rand(1..20), image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRf--VsVjUM5_fCeMAbKlMWuicLoOOJldHK7A&usqp=CAU', category: 'Main')
Item.create(name: "Harerra",price: rand(1..20), image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRf--VsVjUM5_fCeMAbKlMWuicLoOOJldHK7A&usqp=CAU', category: 'soup')
Item.create(name: "Mnsimn",price: rand(1..20), image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRf--VsVjUM5_fCeMAbKlMWuicLoOOJldHK7A&usqp=CAU', category: 'Dessert')
Item.create(name: "Braghir",price: rand(1..20), image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRf--VsVjUM5_fCeMAbKlMWuicLoOOJldHK7A&usqp=CAU', category: 'Dessert')
Item.create(name: "Moroccan Cookies",price: rand(1..20), image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRf--VsVjUM5_fCeMAbKlMWuicLoOOJldHK7A&usqp=CAU', category: 'Dessert')
Item.create(name: "Morccan Cake",price: rand(1..20), image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRf--VsVjUM5_fCeMAbKlMWuicLoOOJldHK7A&usqp=CAU', category: 'Dessert')
Item.create(name: "Mixed Salad",price: rand(1..20), image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRf--VsVjUM5_fCeMAbKlMWuicLoOOJldHK7A&usqp=CAU', category: 'Salad')
Item.create(name: "Mixed Salad",price: rand(1..20), image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRf--VsVjUM5_fCeMAbKlMWuicLoOOJldHK7A&usqp=CAU', category: 'Salad')
Item.create(name: "Mixed Salad",price: rand(1..20), image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRf--VsVjUM5_fCeMAbKlMWuicLoOOJldHK7A&usqp=CAU', category: 'Salad')
