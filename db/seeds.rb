# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

movies = Movie.create([{name: 'Star Wars', year: 1999, description: "sample text 1.", image_url: 'https://picsum.photos/200/300', is_showing: true}])
movies = Movie.create([{name: 'Load of the Ling', year: 2000, description: "sample text 2", image_url: 'https://picsum.photos/200/300', is_showing: true}])
movies = Movie.create([{name: 'Load of the Ling 2', year: 2002, description: "sample text 3", image_url: 'https://picsum.photos/200/300', is_showing: false}])

sheet = Sheet.create([{column: 1, row: 'a'}])
sheet = Sheet.create([{column: 2, row: 'a'}])
sheet = Sheet.create([{column: 3, row: 'a'}])
sheet = Sheet.create([{column: 5, row: 'a'}])
sheet = Sheet.create([{column: 4, row: 'a'}])
sheet = Sheet.create([{column: 1, row: 'b'}])
sheet = Sheet.create([{column: 2, row: 'b'}])
sheet = Sheet.create([{column: 3, row: 'b'}])
sheet = Sheet.create([{column: 4, row: 'b'}])
sheet = Sheet.create([{column: 5, row: 'b'}])
sheet = Sheet.create([{column: 1, row: 'c'}])
sheet = Sheet.create([{column: 2, row: 'c'}])
sheet = Sheet.create([{column: 3, row: 'c'}])
sheet = Sheet.create([{column: 4, row: 'c'}])
sheet = Sheet.create([{column: 5, row: 'c'}])
