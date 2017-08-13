# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

gardens = Garden.create ([
  {name: 'Paradis enchanté', city: 'Vincennes', capacity: '5', description: 'Magnifique jardin fleuri', price: '35'},
  {name: 'Flower power', city: 'Montreuil', capacity: '6', description: 'Idéal pour bbq à côté de Paris', price: '50'},
  {name: 'Une table pour deux', city: 'Charenton', capacity: '2', description: 'Pour un déjeuner en petit comité', price: '30'}
])
