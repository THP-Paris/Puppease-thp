# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do
    User.create(username: Faker::Name.name, phone: Faker::PhoneNumber.cell_phone_in_e164, email: "email#{Faker::Number.number(digits: 2)}@yopmail.com", password: Faker::Construction.trade)
end


Place.create!([
    { "name": "Buckingham Palace", "latitude": "51.501564","longitude": "-0.141944"},
    { "name": "Westminster Abbey", "latitude": "51.499581", "longitude": "-0.127309"},
    { "name": "Big Ben", "latitude": "51.500792", "longitude": "-0.124613"}
    ])