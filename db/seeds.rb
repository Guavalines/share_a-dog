# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user = User.create!(
  email: "user@owner.com",
  password: "123456",
  name: "Max",
  phone_number: "476654878",
  address: "Ajhasjdh akshd 45"
)

Dog.create!(
  name: "Max",
  breed: "German shepherd",
  born_on: rand(Date.new(2012, 1, 1)..Date.today),
  sex: ["male", "female"].sample,
  neutered: [true, false].sample,
  size: %w[small medium large giant],
  user: user
)
