
puts "creating seeds..."

studios = []

Tattoo.destroy_all
Appointment.destroy_all
Review.destroy_all
Artist.destroy_all
Studio.destroy_all


5.times do
   studios << Studio.new(
    name: Faker::Hipster.word,
    description: Faker::Hipster.sentence,
    location: Faker::Address.street_address)
end

studios.each do |studio|
  studio.save
end

puts "Studios created!"

a_array = []

15.times do

  n = Faker::Pokemon.name
  i = Faker::Pokemon.name
  r = [100, 150, 300, 250].sample
  l = ["Barcelona", "Paris", "London", "Berlin", "Madrid", "Rome", "Geneva"].sample

  a = Artist.create(name: n, info: i, rate: r, location: l)
  a_array << a
    #   t.string   "name"
    # t.text     "info"
    # t.integer  "rate"
    # t.integer  "location"
end

 p a_array

puts "artists created!"
tests = []
  a_array.each do |artist|
    artist.studio = studios.sample
    artist.save!
  end

puts  "artists associated to studios!"

45.times do
  tat = Tattoo.create(name: Faker::Pokemon.name,
           decription: Faker::Hipster.sentences(1),
           style: Faker::Hipster.sentence(3) )



  tat.artist = a_array.sample
  tat.save!
end
  puts  "tattoos created!"


  puts  "tattoos associated to artists!"

