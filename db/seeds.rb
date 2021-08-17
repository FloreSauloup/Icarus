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
nans = User.new(
  email: "nans@example.com",
  password: "password",
  first_name: "Nans",
  last_name: "Petit",
  phone_number: "+33613551000",
  description: "i'm student"
)
file = File.open(Rails.root.join('db/fixtures/users/nans.jpg'))
nans.avatar.attach(io: file, filename: 'nans.jpg', content_type: 'image/jpeg')
nans.save!

puts "Done"
puts 'Create user2'

simon = User.new(
  email: "simon@example.com",
  password: "password",
  first_name: "Simon",
  last_name: "Tapis",
  phone_number: "+33620401000",
  description: "i'm pdg"
)
file = File.open(Rails.root.join('db/fixtures/users/simon.jpg'))
simon.avatar.attach(io: file, filename: 'simon.jpg', content_type: 'image/jpeg')
simon.save!

puts "Done"
puts 'Create user3'

mathis = User.new(
  email: "mathis@example.com",
  password: "password",
  first_name: "Mathis",
  last_name: "Colabo",
  phone_number: "+33612361000",
  description: "i'm freelance"
)
file = File.open(Rails.root.join('db/fixtures/users/mathis.jpg'))
mathis.avatar.attach(io: file, filename: 'mathis.jpg', content_type: 'image/jpeg')
mathis.save!

puts "Done"
puts 'Create vehicle1'


etoile_noire = Vehicle.new(
  owner: User.last,
  vehicle_type: "UFO",
  total_seats: 12,
  summary: "lunear spacial",
  address: "Saturne",
  price_per_day: 100_000,
  name: "Etoile noir"
)

file = File.open(Rails.root.join('db/fixtures/vehicles/etoile_noire.jpg'))
etoile_noire.photo.attach(io: file, filename: 'etoile_noire.jpg', content_type: 'image/jpeg')
etoile_noire.save!

puts "Done"
puts 'Create vehicle2'
skywalker = Vehicle.new(
  owner: User.last,
  vehicle_type: "Vaisseau spatial",
  total_seats: 2,
  summary: "Star Wars ship",
  address: "Univers",
  price_per_day: 3_000_000,
  name: "skywalker"
)
file = File.open(Rails.root.join('db/fixtures/vehicles/skywalker.jpg'))
skywalker.photo.attach(io: file, filename: 'skywalker.jpg', content_type: 'image/jpeg')
skywalker.save!

puts "Done"
puts 'Create vehicle3'

privatejet = Vehicle.new(
  owner: User.first,
  vehicle_type: "Avion",
  total_seats: 3,
  summary: "luxuary jet",
  address: "Nantes",
  price_per_day: 15_000,
  name: "Jet 100 2.0"
)
file = File.open(Rails.root.join('db/fixtures/vehicles/privatejet.jpg'))
privatejet.photo.attach(io: file, filename: 'privatejet.jpg', content_type: 'image/jpeg')
privatejet.save!

puts "Done"
puts 'Create vehicle4'

davinci = Vehicle.new(
  owner: User.first,
  vehicle_type: "Avion",
  total_seats: 5,
  summary: "bird machin",
  address: "florence",
  price_per_day: 1000,
  name: "Da Vinci"
)
file = File.open(Rails.root.join('db/fixtures/vehicles/davinci.jpg'))
davinci.photo.attach(io: file, filename: 'davinci.jpg', content_type: 'image/jpeg')
davinci.save!

puts "Done"
puts 'Create renting1'

start_date = Time.new(2021, 10, 31)
end_date = Time.new(2021, 11, 31)
Renting.create!(
  user: User.last,
  vehicle: davinci,
  start_date: start_date,
  end_date: end_date,
  total_price: (end_date - start_date) * davinci.price_per_day,
  status: "rented"
)
puts "Done"
puts 'Create renting2'

start_date = Time.new(2021, 11, 27)
end_date = Time.new(2021, 12, 10)

Renting.create!(
  user: User.last,
  vehicle: Vehicle.first,
  start_date: start_date,
  end_date: end_date,
  total_price: (end_date - start_date) * etoile_noire.price_per_day,
  status: "in attempt"
)
