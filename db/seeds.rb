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
nans.avatar.attach(io: file, filename: 'nans.jpg', content_type: 'image/jpg')
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
simon.avatar.attach(io: file, filename: 'simon.jpg', content_type: 'image/jpg')
simon.save!

puts "Done"
puts 'Create user3'

mathis = User.new(
  email: "mathis@example.com",
  password: "paassword",
  first_name: "Mathis",
  last_name: "Colabo",
  phone_number: "+33612361000",
  description: "i'm freelance"
)
file = File.open(Rails.root.join('db/fixtures/users/mathis.jpg'))
mathis.avatar.attach(io: file, filename: 'mathis.jpg', content_type: 'image/jpg')
mathis.save!

puts 'Create vehicle1'

montgolfiere = Vehicle.new(
  owner: nans,
  vehicle_type: "Contemporary",
  total_seats: 5,
  summary: "A baloon to the moon",
  address: "23 rue Capitaine Dessemond, 13004 Marseille",
  price_per_day: 100,
  name: "Montgolfiere"
)
file = File.open(Rails.root.join('db/fixtures/vehicles/montgolfiere.png'))
montgolfiere.photo.attach(io: file, filename: 'montgolfiere.png', content_type: 'image/png')
montgolfiere.save!

puts "Done"
puts 'Create vehicle2'

zeppelin = Vehicle.new(
  owner: nans,
  vehicle_type: "Antique",
  total_seats: 5,
  summary: "A zepplin, that will make you hot!",
  address: "9 rue Racine, 44000 Nantes",

  price_per_day: 200,
  name: "Hindenburg"
)
file = File.open(Rails.root.join('db/fixtures/vehicles/zeppelin.png'))
zeppelin.photo.attach(io: file, filename: 'zeppelin.png', content_type: 'image/png')
zeppelin.save!

puts "Done"
puts 'Create vehicle3'

jet = Vehicle.new(
  owner: nans,
  vehicle_type: "Contemporary",
  total_seats: 3,
  summary: "A luxuary jet",
  address: "1 rue Constantine, 69001 Lyon",
  price_per_day: 15_000,
  name: "Jet 100 2.0"
)
file = File.open(Rails.root.join('db/fixtures/vehicles/jet.png'))
jet.photo.attach(io: file, filename: 'jet.png', content_type: 'image/png')
jet.save!

puts "Done"
puts 'Create vehicle4'

drone = Vehicle.new(
  owner: nans,
  vehicle_type: "Futuristic",
  total_seats: 2,
  summary: "A bird machine, designed by Elon Musk. It can help you attack Talibans!",
  address: "21 rue Méaulens, 62000 Arras",
  price_per_day: 500,
  name: "Drone"
)
file = File.open(Rails.root.join('db/fixtures/vehicles/drone.png'))
drone.photo.attach(io: file, filename: 'drone.png', content_type: 'image/png')
drone.save!

puts "Done"
puts 'Create vehicle5'
sleep 1
avion = Vehicle.new(
  owner: nans,
  vehicle_type: "Contemporary",
  total_seats: 2,
  summary: "A plane, it can even shoot rockets",
  address: "81 rue Blatin, 63000 Clermont-Ferrand",
  price_per_day: 150,
  name: "Plane"
)
file = File.open(Rails.root.join('db/fixtures/vehicles/avion.png'))
avion.photo.attach(io: file, filename: 'avion.png', content_type: 'image/png')
avion.save!

puts "Done"
puts 'Create vehicle6'

baby = Vehicle.new(
  owner: nans,
  vehicle_type: "Unusual",
  total_seats: 1,
  summary: "A beatiful baby, for people that don't like other's children!",
  address: "10 rue Palissy, 47000 Agen",
  price_per_day: 50,
  name: "Flying baby"
)
file = File.open(Rails.root.join('db/fixtures/vehicles/enfant.png'))
baby.photo.attach(io: file, filename: 'enfant.png', content_type: 'image/png')
baby.save!

puts "Done"
puts 'Create vehicle7'

banane = Vehicle.new(
  owner: nans,
  vehicle_type: "Unusual",
  total_seats: 5,
  summary: "A banana for scale",
  address: "45 rue de la Pelouse de Douet, 33100 Bordeaux",
  price_per_day: 5000,
  name: "Flying banana"
)
file = File.open(Rails.root.join('db/fixtures/vehicles/banane.png'))
banane.photo.attach(io: file, filename: 'banane.png', content_type: 'image/png')
banane.save!

puts "Done"
puts 'Create vehicle8'

tapis = Vehicle.new(
  owner: nans,
  vehicle_type: "Antique",
  total_seats: 2,
  summary: "A beatiful carpet, it take you under the stars!",
  address: "1 rue Antheaume, 76000 Rouen",
  price_per_day: 50,
  name: "Flying carpet"
)
file = File.open(Rails.root.join('db/fixtures/vehicles/tapis.png'))
tapis.photo.attach(io: file, filename: 'tapis.png', content_type: 'image/png')
tapis.save!

puts "Done"
puts 'Create vehicle9'

ovnis = Vehicle.new(
  owner: nans,
  vehicle_type: "Futuristic",
  total_seats: 3,
  summary: "On m'appelle l'Ovni! Le J c'est le S!",
  address: "25 rue Hoche, 87100 Limoges",
  price_per_day: 6_000,
  name: "Ovni"
)
file = File.open(Rails.root.join('db/fixtures/vehicles/ovnis.png'))
ovnis.photo.attach(io: file, filename: 'ovnis.png', content_type: 'image/png')
ovnis.save!

puts "Done"
puts 'Create vehicle10'

nimbus = Vehicle.new(
  owner: mathis,
  vehicle_type: "Unusual",
  total_seats: 1,
  summary: "A broom that will take you to the moon!",
  address: "12 rue Raymond Cortat, 15000 Aurillac",
  price_per_day: 100,
  name: "Nimbus 2000"
)

file = File.open(Rails.root.join('db/fixtures/vehicles/nimbus.png'))
nimbus.photo.attach(io: file, filename: 'nimbus.png', content_type: 'image/png')
nimbus.save!

puts "Done"
puts 'Create vehicle11'

jetpack = Vehicle.new(
  owner: nans,
  vehicle_type: "Extreme",
  total_seats: 1,
  summary: "A one man's job, to be in GTA!",
  address: "44 rue Chanzy, 45000 Orléans",
  price_per_day: 500,
  name: "Jetpack"

)
file = File.open(Rails.root.join('db/fixtures/vehicles/jetpack.png'))
jetpack.photo.attach(io: file, filename: 'jetpack.png', content_type: 'image/png')
jetpack.save!

puts "Done"
puts 'Create vehicle12'

milenium_falcon = Vehicle.new(
  owner: mathis,
  vehicle_type: "Futuristic",
  total_seats: 7,
  summary: "Han Solo's smuggler's ship. With it you can help the rebels fight",
  address: "75, Place de la Madeleine, 75012 PARIS",
  price_per_day: 5_000,
  name: "Milenium Falcon"
)
file = File.open(Rails.root.join('db/fixtures/vehicles/faucon.png'))
milenium_falcon.photo.attach(io: file, filename: 'faucon.png', content_type: 'image/png')
milenium_falcon.save!

puts "Done"
puts 'Create vehicle13'

pegasus = Vehicle.new(
  owner: nans,
  vehicle_type: "Antique",
  total_seats: 1,
  summary: "A beatiful flying horse for one!",
  address: "1 Rue du Thouron, 06130 Grasse",
  price_per_day: 200,
  name: "Pegasus"
)
file = File.open(Rails.root.join('db/fixtures/vehicles/pegasus.png'))
pegasus.photo.attach(io: file, filename: 'pegasus.png', content_type: 'image/png')
pegasus.save!

puts "Done"
puts 'Create vehicle14'

cerf = Vehicle.new(
  owner: nans,
  vehicle_type: "Contemporary",
  total_seats: 1,
  summary: "To fly high as a kite!",
  address: "10 Rue Emile Zola, 37000 Tours",
  price_per_day: 10,
  name: "Flying kite"
)
file = File.open(Rails.root.join('db/fixtures/vehicles/cerf.png'))
cerf.photo.attach(io: file, filename: 'cerf.png', content_type: 'image/png')
cerf.save!

puts "Done"
puts 'Create vehicle15'

nyancat = Vehicle.new(
  owner: nans,
  vehicle_type: "Futuristic",
  total_seats: 2,
  summary: "A cat that has rainbow stuck to him",
  address: "30 rue de Courcelles, 51100 Reims",
  price_per_day: 300,
  name: "Nyan cat"
)
file = File.open(Rails.root.join('db/fixtures/vehicles/nyancat.png'))
nyancat.photo.attach(io: file, filename: 'nyancat.png', content_type: 'image/png')
nyancat.save!

puts "Done"
puts 'Create vehicle16'

ulm = Vehicle.new(
  owner: nans,
  vehicle_type: "Contemporary",
  total_seats: 2,
  summary: "An UltraLight Aviation",
  address: "26 Rue Odebert, 21000 Dijon",
  price_per_day: 250,
  name: "Ulm"
)
file = File.open(Rails.root.join('db/fixtures/vehicles/ulm.png'))
ulm.photo.attach(io: file, filename: 'ulm.png', content_type: 'image/png')
ulm.save!

puts "Done"
puts 'Create vehicle17'

wingsuit = Vehicle.new(
  owner: nans,
  vehicle_type: "Extreme",
  total_seats: 1,
  summary: "Feel like a bird",
  address: "14 rue Serviez, 64000 Pau",
  price_per_day: 350,
  name: "Wingsuit"
)
file = File.open(Rails.root.join('db/fixtures/vehicles/wingsuit.png'))
wingsuit.photo.attach(io: file, filename: 'wingsuit.png', content_type: 'image/png')
wingsuit.save!

puts "Done"
puts 'Create vehicle18'

helico = Vehicle.new(
  owner: nans,
  vehicle_type: "Contemporary",
  total_seats: 6,
  summary: "An Helicopter to fly as a family",
  address: "34 Rue Voltaire, 29200 Brest",
  price_per_day: 250,
  name: "Helico"
)
file = File.open(Rails.root.join('db/fixtures/vehicles/helico.png'))
helico.photo.attach(io: file, filename: 'helico.png', content_type: 'image/png')
helico.save!

puts "Done"
puts 'Create renting1'

start_date = Time.new(2021, 10, 31)
end_date = Time.new(2021, 11, 31)
Renting.create!(
  user: simon,
  vehicle: nimbus,
  start_date: start_date,
  end_date: end_date,
  total_price: ((end_date - start_date) * nimbus.price_per_day)/ 86400,
  status: "rented"
)
puts "Done"
puts 'Create renting2'

start_date = Time.new(2021, 11, 27)
end_date = Time.new(2021, 12, 10)


Renting.create!(
  user: simon,
  vehicle: helico,
  start_date: start_date,
  end_date: end_date,
  total_price: ((end_date - start_date) * helico.price_per_day)/ 86400,
  status: "in attempt"
)
