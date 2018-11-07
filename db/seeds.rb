# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name:         'Dishoom',
    address:      '7 Boundary St, London E2 7JE',
    category:  'japanese'
  },
  {
    name:         'Pizza East',
    address:      '56A Shoreditch High St, London E1 6PQ',
    category:  'italian'
  },
  {
    name:         'frite alors',
    address:      '9982 rue juste une fois',
    category:  'belgian'
  },
  {
    name:         'bistrot du coin',
    address:      '545 avenue du colonel moutarde',
    category:  'french'
  },
  {
    name:         'bondour',
    address:      '23A rue ta pas dit dzip',
    category:  'chinese'
  }

]
Restaurant.create!(restaurants_attributes)
puts 'Finished!'
