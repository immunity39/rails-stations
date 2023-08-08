# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

movies = Movie.create([{name: 'Star Wars', year: 1999, description: "text", image_url: 'https://picsum.photos/200/300', is_showing: true}])
movies = Movie.create([{name: 'Load of the Lings', year: 2000, description: "text", image_url: 'https://picsum.photos/200/300', is_showing: false}])
