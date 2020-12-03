# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#Reset Database
Item.destroy_all
# Order.destroy_all
# OrderItem.destroy_all

Owner.create(username: "Owner", password: "password")

Item.create(name: "Couscous",price: 12, image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRf--VsVjUM5_fCeMAbKlMWuicLoOOJldHK7A&usqp=CAU', category: 'Main')
Item.create(name: "Rfissa",price: 14, image: 'https://lalivraison.ma/assets/img/images/lalivraison/lemedina/articles/image__1591709085048303.jpg?1606829324', category: 'Main')
Item.create(name: "Siffa",price: 10, image: 'https://i.pinimg.com/236x/b3/63/37/b363378a7139ef17593bbf60b7ad1ef7--walima.jpg', category: 'Main')
Item.create(name: "Pastella",price: 15, image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQQBClnm80VhszT2n3MVtZK2-k0LVNvH7bGTw&usqp=CAU', category: 'Main')
Item.create(name: "Tajine with Meat and Prunes",price: 15, image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTNoZaRvOgyRrzbEs1zHkmysPrjoyH8F69zRg&usqp=CAU', category: 'Main')
Item.create(name: "Tajine with Chicken",price: 14, image: 'https://cdn.tasteatlas.com/images/dishes/ae34fe326cd440caabba424b59a0c679.jpg?w=905&h=510', category: 'Main')
Item.create(name: "Tajine with Fish",price: 16, image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSh8JUMmnZWRm0tApOUWr22-4VZ990SSHDZ4g&usqp=CAU', category: 'Main')
Item.create(name: "Harerra",price: 6, image: 'https://cdn.tasteatlas.com/images/dishrestaurants/160273e8a08e41da8d7eae317cb3def7.jpg?w=600&h=500', category: 'soup')
Item.create(name: "Msimn (per pound)",price: 22, image: 'https://cdn.tasteatlas.com/images/dishes/fd0c424307ef46cf9eeca0547577d0f3.jpg?w=905&h=510', category: 'Dessert')
Item.create(name: "Braghir (per pound)",price: 25, image: 'https://cdn.tasteatlas.com/images/dishes/8085d90bf9b94a9f99d2f510be9ece25.jpg?w=905&h=510', category: 'Dessert')
Item.create(name: "Chebekia (per pound)",price: 20, image: 'https://cdn.tasteatlas.com/images/dishes/1d3b044ae9274dd1b04d3cfe86d9cec1.jpg?w=905&h=510', category: 'Dessert')
Item.create(name: "Kaab el Ghazal (per pound)",price: 30, image: 'https://cdn.tasteatlas.com/images/dishes/aa799367805a455ab6ac4cb2f11029fa.jpg?w=905&h=510', category: 'Dessert')
Item.create(name: "Sfenj (per pound)",price: 10, image: 'https://cdn.tasteatlas.com/images/dishes/2f1975d09a6244c4a13d6e8fba5d249a.jpg?w=905&h=510', category: 'Dessert')
Item.create(name: "Sellou (per pound)",price: 22, image: 'https://cdn.tasteatlas.com/Images/Dishes/39feda58925e449499bc827fe15e8e94.jpg?w=905&h=510', category: 'Dessert')
Item.create(name: "Mixed Salad",price: 4, image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRxpfMzCkIAct3DwIH7DtxIfrKW_I27DPGcTw&usqp=CAU', category: 'Salad')
Item.create(name: "Mint Tea",price: 5, image: 'https://cdn.tasteatlas.com/images/ingredients/534bbf0358b74a319c3d7fe9d7528440.jpg?w=905&h=510', category: 'Beverage')
