# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#before launching run rails db:drop db:create db:migrate db:seed

15.times do
    User.create(username: Faker::Name.name, phone: Faker::PhoneNumber.cell_phone_in_e164, email: "email#{Faker::Number.number(digits: 2)}@yopmail.com", password: Faker::Construction.trade)
end

brian = User.create(username: "Brian", email: "brian.variengien@gmail.com", password:"puppease", admin:true)

eva = User.create(username: "Eva", email: "eva.laurent.78@gmail.com", password:"puppease", admin:true)

laurence = User.create(username: "Laurence", email: "lau13perdereau@gmail.com", password:"puppease", admin:true)


Place.create!([
    { "city": "Paris", "latitude": "48.856613", "longitude": "2.352222", "user_id":rand(1..13)},
    { "city": "Marseille", "latitude": "43.296482", "longitude": "5.369780", "user_id":rand(1..13)},
    { "city": "Lyon", "latitude": "45.764042", "longitude": "4.835659", "user_id":rand(1..13)},
    { "city": "Bordeaux", "latitude": "44.837788", "longitude": "-0.579180", "user_id":rand(1..13)},
    { "city": "Toulouse", "latitude": "43.604652", "longitude": "1.444209", "user_id":rand(1..13)},
    { "city": "Briançon", "latitude": "44.897190", "longitude": "6.634330", "user_id":rand(1..13)},
    { "city": "Pau",  "latitude": "43.295101", "longitude": "-0.370797", "user_id":rand(1..13)},
    { "city": "Lille",  "latitude": "50.629250", "longitude": "3.057256", "user_id":rand(1..13)},
    { "city": "Annecy",  "latitude": "45.899780", "longitude": "6.128350", "user_id":rand(1..13)},
    { "city": "Nantes",  "latitude": "47.218372", "longitude": "-1.553621", "user_id":rand(1..13)},
    { "city": "Grenoble", "latitude": "45.194260", "longitude": "5.731670", "user_id":rand(1..13)},
    { "city": "Montpellier",  "latitude": "43.610767", "longitude": "3.876716", "user_id":rand(1..13)}

    ])


User.update(place_id: rand(1..12))



require 'open-uri'

30.times do
dog = Dog.create!(name: Faker::Creature::Dog.name, birth_date: Faker::Date.between(from: '2017-01-23', to: '2021-09-25'), gender:rand(1..2), description: Faker::Lorem.paragraph(sentence_count: 2, supplemental: false, random_sentences_to_add: 4), breed: rand(0..28), color:rand(0..7), vaccine: rand(0..1), lof:rand(0..1), reward:rand(0..1), user_id:rand(1..13))
file = URI.open('https://source.unsplash.com/350x350/?dog?sig')
dog.pictures.attach(io: file, filename: 'dog.png', content_type: 'image/png')
end


