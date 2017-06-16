
puts "creating seeds..."















# Studio.destroy_all
# Artist.destroy_all


# puts "seeding studios"

# Studio.create({
#     name: "LTW Tattoo Studio",
#     description: "We specialize in colorful and flowers tattoos",
#     location: "Carrer Tallers, 29, 08001 Barcelona"
# })
# Studio.create({
#     name: "Oxytocina Tattoo Studio Barcelona",
#     description: "We specialize in watercolor",
#     location: "Carrer del Comte d'Urgell, 82, 08036 Barcelona"
# })
# Studio.create({
#     name: "Urban Tattoo",
#     description: "We specialize in modern tattoos",
#     location: "Via del Moro, 12, 00153 Roma, Italy"
# })
# Studio.create({
#     name: "Inkvaders Tattoo Studio",
#     description: "We specialize in dotwork tattoos",
#     location: "Route de Drize 3, 1227 Carouge, Switzerland"
# })
# Studio.create({
#     name: "Flamin' Eight Tattoo Studio",
#     description: "We specialize in old school tattoos",
#     location: "2 Castle Rd, London NW1 8PP, UK"
# })


# puts "done"
# puts "seeding artists"


# Artist.create({
#     name: "Rob Kelly",
#     info: "I do out of this world tattoos specializing in rocketships and birds",
#     rate: 100,
#     rating: nil,
#     location: "Carrer Tallers, 29, 08001 Barcelona"
#     })
# Artist.create({
#     name: "Doug Hardy",
#     info: "I have been tattooing for over a decade. During that time, I have mastered and refined my own take on classic American street-shop styles",
#     rate: 50,
#     rating: nil,
#     location: "Via del Moro, 12, 00153 Roma, Italy"
#     })
# Artist.create({
#     name: "Angelique Houtkamp",
#     info: "I do out of this world tattoos specializing in horses and dogs",
#     rate: 45,
#     rating: nil,
#     location: "Carrer del Comte d'Urgell, 82, 08036 Barcelona"
#     })
# Artist.create({
#     name: "Keith Underwood",
#     info: "I do amazing tattoos specializing in faces",
#     rate: 30,
#     rating: nil,
#     location: "Route de Drize 3, 1227 Carouge, Switzerland"
#     })
# Artist.create({
#     name: "Lana Wingo",
#     info: "I do great tattoos specializing in water colors and flowers",
#     rate: 75,
#     rating: nil,
#     location: "2 Castle Rd, London NW1 8PP, UK"
#     })
# Artist.create({
#     name: "Jeffrey Pitt",
#     info: "I like to do bold and bright tattoos that are inspired by the tradidional american tattoo",
#     rate: 300,
#     rating: nil,
#     location: "161 Rue Amelot, 75011 Paris, France"
#     })
# Artist.create({
#     name: "Valerie Vargas",
#     info: "I love to do traditional tattoos and I have over 20 years of experience",
#     rate: 10,
#     rating: nil,
#     location: "49 Rue Greneta, 75002 Paris, France"
#     })
# Artist.create({
#     name: "Bert Krak",
#     info: "My favorite tattoos to do have lots of line work and shading. They may take a long time to do but it's worth it",
#     rate: 30,
#     rating: nil,
#     location: "9 Rue Saint-Merri, 75004 Paris, France"
#     })
# Artist.create({
#     name: "Bailey Hunter Robinson",
#     info: "My love of folk art has driven me to bring that inspiration in my tattoos mainly working in the grey scale",
#     rate: 20,
#     rating: nil,
#     location: "37 Rue de Douai, 75009 Paris, France"
#     })
# Artist.create({
#     name: "Louis Molloy",
#     info: "My tattoos have been on David Beckham. My favorite tattoos to do are related to religion",
#     rate: 10,
#     rating: nil,
#     location: "Calle Federico García Lorca, 1, 28830 San Fernando de Henares, Madrid"
#     })
# Artist.create({
#     name: "Woon Kim",
#     info: "I like to mix international styles together I also like to bring musicians into my artwork",
#     rate: 50,
#     rating: nil,
#     location: "Pflügerstraße 6, 12047 Berlin, Germany"
#     })
# Artist.create({
#     name: 'Kat Von D',
#     info: "I'm famous in the tattoo world and my favorite tattoos are portraits",
#     rate: 75,
#     rating: nil,
#     location: "Pflügerstraße 6, 12047 Berlin, Germany"
#     })
# Artist.create({
#     name: "Placaso",
#     info: "I love grey scale work and specialize in lettering and portraits",
#     rate: 45,
#     rating: nil,
#     location: "Bouchéstraße 12, 12435 Berlin, Germany"
#     })
# Artist.create({
#     name: "Shane O'Neill",
#     info: "My tattoos are so real you wont be able to tell the difference",
#     rate: 25,
#     rating: nil,
#     location: "Calle de Gaztambide, 61, 28015 Madrid"
#     })
# Artist.create({
#     name: "JK5",
#     info: "I not only specialize in tattoos but also in clothing design",
#     rate: 250,
#     rating: nil,
#     location: "Calle Federico García Lorca, 1, 28830 San Fernando de Henares, Madrid"
#     })
# puts "done"












































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





a_array << Artist.create({
    name: "Rob Kelly",
    info: "I do out of this world tattoos specializing in rocketships and birds",
    rate: 100,
    rating: nil,
    location: "Carrer Tallers, 29, 08001 Barcelona"
    })
a_array << Artist.create({
    name: "Doug Hardy",
    info: "I have been tattooing for over a decade. During that time, I have mastered and refined my own take on classic American street-shop styles",
    rate: 50,
    rating: nil,
    location: "Via del Moro, 12, 00153 Rome"
    })
a_array << Artist.create({
    name: "Angelique Houtkamp",
    info: "I do out of this world tattoos specializing in horses and dogs",
    rate: 45,
    rating: nil,
    location: "Carrer del Comte d'Urgell, 82, 08036 Barcelona"
    })
a_array << Artist.create({
    name: "Keith Underwood",
    info: "I do amazing tattoos specializing in faces",
    rate: 30,
    rating: nil,
    location: "Rue de Montbrillant 12, 1201 Geneva"
    })
a_array << Artist.create({
    name: "Lana Wingo",
    info: "I do great tattoos specializing in water colors and flowers",
    rate: 75,
    rating: nil,
    location: "2 Castle Rd, London"
    })
a_array << Artist.create({
    name: "Jeffrey Pitt",
    info: "I like to do bold and bright tattoos that are inspired by the tradidional american tattoo",
    rate: 300,
    rating: nil,
    location: "161 Rue Amelot, 75011 Paris"
    })
a_array << Artist.create({
    name: "Valerie Vargas",
    info: "I love to do traditional tattoos and I have over 20 years of experience",
    rate: 10,
    rating: nil,
    location: "49 Rue Greneta, 75002 Paris"
    })
a_array << Artist.create({
    name: "Bert Krak",
    info: "My favorite tattoos to do have lots of line work and shading. They may take a long time to do but it's worth it",
    rate: 30,
    rating: nil,
    location: "9 Rue Saint-Merri, 75004 Paris"
    })
a_array << Artist.create({
    name: "Bailey Hunter Robinson",
    info: "My love of folk art has driven me to bring that inspiration in my tattoos mainly working in the grey scale",
    rate: 20,
    rating: nil,
    location: "37 Rue de Douai, 75009 Paris"
    })
a_array << Artist.create({
    name: "Louis Molloy",
    info: "My tattoos have been on David Beckham. My favorite tattoos to do are related to religion",
    rate: 10,
    rating: nil,
    location: "Calle Federico García Lorca, 1, 28830 San Fernando de Henares, Madrid"
    })
a_array << Artist.create({
    name: "Woon Kim",
    info: "I like to mix international styles together I also like to bring musicians into my artwork",
    rate: 50,
    rating: nil,
    location: "Pflügerstraße 6, 12047 Berlin"
    })
a_array << Artist.create({
    name: 'Kat Von D',
    info: "I'm famous in the tattoo world and my favorite tattoos are portraits",
    rate: 75,
    rating: nil,
    location: "Pflügerstraße 6, 12047 Berlin"
    })
a_array << Artist.create({
    name: "Placaso",
    info: "I love grey scale work and specialize in lettering and portraits",
    rate: 45,
    rating: nil,
    location: "Bouchéstraße 12, 12435 Berlin"
    })
a_array << Artist.create({
    name: "Shane O'Neill",
    info: "My tattoos are so real you wont be able to tell the difference",
    rate: 25,
    rating: nil,
    location: "Calle de Gaztambide, 61, 28015 Madrid"
    })
a_array << Artist.create({
    name: "JK5",
    info: "I not only specialize in tattoos but also in clothing design",
    rate: 250,
    rating: nil,
    location: "Calle Federico García Lorca, 1, 28830 San Fernando de Henares, Madrid"
    })











# 15.times do

#   n = Faker::Pokemon.name
#   i = Faker::Pokemon.name
#   r = [100, 150, 300, 250].sample
#   l = ["Barcelona", "Paris", "London", "Berlin", "Madrid", "Rome", "Geneva"].sample

#   a = Artist.create(name: n, info: i, rate: r, location: l)
#   a_array << a
#     #   t.string   "name"
#     # t.text     "info"
#     # t.integer  "rate"
#     # t.integer  "location"
# end



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

