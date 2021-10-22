# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Product.create(title: 'Banana', product_type: 'Fruit', rating: 5.0 , price: '100')
Product.create(title: 'Watermelon', product_type: 'Fruit', rating: 3.0 , price: '50')
Product.create(title: 'Strawberry', product_type: 'Fruit', rating: 1.0 , price: '30')
Product.create(title: 'Mango', product_type: 'Fruit', rating: 5.0 , price: '80')
