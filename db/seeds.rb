require 'faker'

puts "creating seeds..."

5.times do
  studios = Studio.create(
    name: Faker::Hipster.word,
    description: Faker::Hipster.sentence,
    location: Faker::Address.street_name)
end

puts "done!"
