# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Clear DB'
Renting.destroy_all
Vehicle.destroy_all
User.destroy_all

puts 'Create user1'
User.create!(
  email: "nans@example.com",
  password: "password",
  first_name: "Nans",
  last_name: "Petit",
  phone_number: "+33613551000",
  description: "i'm student"
)
puts "Done"
puts 'Create user2'
User.create!(
  email: "bernard@example.com",
  password: "password",
  first_name: "Bernard",
  last_name: "Tapis",
  phone_number: "+33620401000",
  description: "i'm pdg"
)
puts "Done"
puts 'Create user3'
User.create!(
  email: "mathis@example.com",
  password: "password",
  first_name: "Mathis",
  last_name: "Colabo",
  phone_number: "+33612361000",
  description: "i'm freelance"
)
puts "Done"
puts 'Create vehicle1'
etoile_noir = Vehicle.create!(
  owner: User.last,
  vehicle_type: "UFO",
  total_seats: 12,
  summary: "lunear spacial",
  address: "Saturne",
  price_per_day: 100_000,
  name: "Etoile noir"
)
puts "Done"
puts 'Create vehicle2'
skywalker = Vehicle.create!(
  owner: User.last,
  vehicle_type: "Vaisseau spatial",
  total_seats: 2,
  summary: "Star Wars ship",
  address: "Univers",
  price_per_day: 3_000_000,
  name: "skywalker"
)
puts "Done"
puts 'Create vehicle3'
jet_100 = Vehicle.create!(
  owner: User.first,
  vehicle_type: "Avion",
  total_seats: 3,
  summary: "luxuary jet",
  address: "Nantes",
  price_per_day: 15_000,
  name: "Jet 100 2.0"
)
puts "Done"
puts 'Create vehicle3'
da_vinci = Vehicle.create!(
  owner: User.first,
  vehicle_type: "Avion",
  total_seats: 5,
  summary: "bird machin",
  address: "florence",
  price_per_day: 1000,
  name: "Da Vinci"
)
puts "Done"
puts 'Create renting1'
start_date = Time.new(2021, 10, 31)
end_date = Time.new(2021, 11, 31)
Renting.create!(
  user: User.last,
  vehicle: da_vinci,
  start_date: start_date,
  end_date: end_date,
  total_price: (end_date - start_date) * da_vinci.price_per_day,
  status: "rented"
)
puts "Done"
puts 'Create renting2'
# Renting.create!(
#   user: User.last,
#   vehicle: Vehicle.first,
#   start_date: Time.new(2021, 11, 27),
#   end_date: Time.new(2021, 12, 10),
#   total_price: (end_date - start_date) * price_per_day,
#   status: "in attempt"
# )
