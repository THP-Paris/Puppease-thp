# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



10.times do
    User.create(username: Faker::Name.name, phone: Faker::PhoneNumber.cell_phone_in_e164, email: "email#{Faker::Number.number(digits: 2)}@yopmail.com", password: Faker::Construction.trade )
end


Place.create!([
    { "city": "Buckingham Palace", "latitude": "51.501564","longitude": "-0.141944", "user_id":rand(1..10)},
    { "city": "Westminster Abbey", "latitude": "51.499581", "longitude": "-0.127309", "user_id":rand(1..10)},
    { "city": "Big Ben", "latitude": "51.500792", "longitude": "-0.124613", "user_id":rand(1..10)}
    ])


require 'open-uri'

16.times do
dog = Dog.create!(name: Faker::Creature::Dog.name, birth_date: Faker::Date.between(from: '2017-01-23', to: '2021-09-25'), gender:rand(1..2), description: Faker::Creature::Dog.meme_phrase, breed: rand(0..28), color:rand(0..8), vaccine: rand(0..1), lof:rand(0..1), reward:rand(0..1), user_id:rand(1..10), owner_id:rand(1..10))
file = URI.open('https://source.unsplash.com/250x250/?dog?sig')
dog.pictures.attach(io: file, filename: 'user.png', content_type: 'image/png')
end


