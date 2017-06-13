# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Create Artists Seed

15.times do

  # n = Faker::Friends.character
  # i = Faker::Hipster.sentence(3, false, 4)
  r = [100, 150, 300, 250].sample
  l = ["Barcelona", "Paris", "London", "Berlin", "Madrid", "Rome", "Geneva"].sample

  p Artist.new(rate: r, location: l)


    #   t.string   "name"
    # t.text     "info"
    # t.integer  "rate"
    # t.integer  "location"

end

