
puts "creating seeds..."

5.times do
  studios = Studio.create(
    name: Faker::Hipster.word,
    description: Faker::Hipster.sentence,
    location: Faker::Address.street_name)
end

puts "done!"

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

