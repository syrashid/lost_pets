# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Pet.create(name: 'dory', address: 'ocean', species: 'fish', found_on: Date.new(2020,3,21))

Pet.create(name: 'nemo', address: 'ocean', species: 'fish', found_on: Date.new(2020,3,21))

Pet.create(name: 'salem', address: 'burke', species: 'cat', found_on: Date.new(2020,3,14))

Pet.create(name: 'wishbone', address: 'melbourne', species: 'dog', found_on: Date.new(2020,3,14))

Pet.create(name: 'clifford', address: 'sydney', species: 'dog', found_on: Date.today)
