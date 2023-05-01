# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Booking.destroy_all
Car.destroy_all
User.destroy_all

moi = User.new(
  email: "moi@moi.com",
  password: "123123"
)
moi.save!

car1 = Car.create(
  brand: "Mercedes-Benz",
  model: "GLE 450",
  price_per_day: 340,
  year_of_production: 2020,
  address: "Paris",
  user: moi
)
car2 = Car.create(
  brand: "AUDI",
  model: "RS5",
  price_per_day: 340,
  year_of_production: 2020,
  address: "Lyon",
  user: moi
)

car3 = Car.create!(
  brand: "Mercedes",
  model: "C63 AMG",
  price_per_day: 140,
  year_of_production: 2020,
  address: "Lyon",
  user: moi
)
car4 = Car.create!(
  brand: "AUDI",
  model: "RS7",
  price_per_day: 290,
  year_of_production: 2020,
  address: "Lyon",
  user: moi
)
car5 = Car.create!(
  brand: "BMW",
  model: "M5",
  year_of_production: 2018,
  address: "Paris",
  price_per_day: 450,
  user: moi
)
car6 = Car.create!(
  brand: "AUDI",
  model: "RS6",
  price_per_day: 240,
  year_of_production: 2020,
  address: "Paris",
  user: moi
)

car7 = Car.create!(
  brand: "BMW",
  model: "M3",
  year_of_production: 2018,
  address: "Marseille",
  price_per_day: 150,
  user: moi
)

car8 = Car.create!(
  brand: "Mercedes",
  model: "E63 AMG",
  price_per_day: 140,
  year_of_production: 2022,
  address: "Paris",
  user: moi
)
car9 = Car.create!(
  brand: "AUDI",
  model: "RSQ3",
  price_per_day: 490,
  year_of_production: 2022,
  address: "Marseille",
  user: moi
)
car10 = Car.create!(
  brand: "TOGG",
  model: "TX10",
  year_of_production: 2023,
  address: "ANKARA",
  price_per_day: 750,
  user: moi,
  image: "car10.jpg"
)
car11 = Car.create!(
  brand: "AUDI",
  model: "RS7",
  price_per_day: 240,
  year_of_production: 2020,
  address: "Lyon",
  user: moi
)

car12 = Car.create!(
  brand: "TOGG",
  model: "TX10",
  year_of_production: 2023,
  address: "ISTANBUL",
  price_per_day: 950,
  user: moi
)
