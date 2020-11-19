# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Item.destroy_all


foodType = ["Dessert", "Main", "App", "Soup", "Salad"]

Item.create(price: 15.45,
            foodType: 'Main',
            itemName: "Couscous",
            qunanty: 50)

20.times{
    Item.create(
        price: rand(0..50),
        foodType: foodType.sample,
        itemName: Faker::Food.dish,
        qunanty: rand(3..20)
    )
}