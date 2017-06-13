# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# tattoos



45.times do
  tat = { name: Faker::Pokemon.name,
           description: Faker::Hipster.sentences(1),
           style: Faker::Hipster.sentence(3)
  }
  p Tattoo.new(tat)

end
