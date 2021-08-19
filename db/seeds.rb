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

avion_cargo = Vehicle.new(
  owner: User.last,
  vehicle_type: "UFO",
  total_seats: 120,
  summary: "A fully fonctionnal battle station. It can destroy rebels and entire planets!",
  address: "58 rue Pierre De Coubertin, 31100 TOULOUSE",
  price_per_day: 100_000,
  name: "Etoile noir"
)

file = File.open(Rails.root.join('db/fixtures/vehicles/avion_cargo.jpg'))
avion_cargo.photo.attach(io: file, filename: 'avion_cargo.jpg', content_type: 'image/jpeg')
avion_cargo.save!

puts "Done"
puts 'Create vehicle2'

falcon = Vehicle.new(
  owner: User.last,
  vehicle_type: "Vaisseau spatial",
  total_seats: 7,
  summary: "Han Solo's smuggler's ship. With it you can help the rebels fight",
  address: "75 Place de la Madeleine, 75012 PARIS",
  price_per_day: 3_000_000,
  name: "Mileninum Flacon"
)
file = File.open(Rails.root.join('db/fixtures/vehicles/falcon.jpg'))
falcon.photo.attach(io: file, filename: 'falcon.jpg', content_type: 'image/jpeg')
falcon.save!

puts "Done"
puts 'Create vehicle3'

avion_de_chasse = Vehicle.new(
  owner: User.first,
  vehicle_type: "Avion",
  total_seats: 3,
  summary: "A luxuary jet",
  address: "73 rue Bonneterie, 25200 Montbéliard",
  price_per_day: 15_000,
  name: "Jet 100 2.0"
)
file = File.open(Rails.root.join('db/fixtures/vehicles/avion_de_chasse.jpg'))
avion_de_chasse.photo.attach(io: file, filename: 'avion_de_chasse.jpg', content_type: 'image/jpeg')
avion_de_chasse.save!

puts "Done"
puts 'Create vehicle5'

avion_jet = Vehicle.new(
  owner: User.first,
  vehicle_type: "Avion",
  total_seats: 2,
  summary: "A fighter-plane, it can even shoot rockets",
  address: "10 Rue Lucien Bouget , 91220 Brétigny-sur-orge",
  price_per_day: 100_000,
  name: "Plane"
)
file = File.open(Rails.root.join('db/fixtures/vehicles/avion_jet.jpg'))
avion_jet.photo.attach(io: file, filename: 'avion_jet.jpg', content_type: 'image/jpeg')
avion_jet.save!

puts "Done"
puts 'Create vehicle6'

baby = Vehicle.new(
  owner: User.first,
  vehicle_type: "Montgolfiere",
  total_seats: 1,
  summary: "A beatiful baby, for people that don't like other's children!",
  address: "17 Rue Victor Hugo, 95140 Garges-les-gonesse",
  price_per_day: 100_000_000,
  name: "Flying baby"
)
file = File.open(Rails.root.join('db/fixtures/vehicles/baby.jpg'))
baby.photo.attach(io: file, filename: 'baby.jpg', content_type: 'image/jpeg')
baby.save!

puts "Done"
puts 'Create vehicle7'

banane_volante = Vehicle.new(
  owner: User.first,
  vehicle_type: "UFO",
  total_seats: 5,
  summary: "A banana for scale",
  address: "45 rue de la Pelouse de Douet, 33100 Bordeaux",
  price_per_day: 5000,
  name: "Flying banana"
)
file = File.open(Rails.root.join('db/fixtures/vehicles/banane_volante.jpg'))
banane_volante.photo.attach(io: file, filename: 'banane_volante.jpg', content_type: 'image/jpeg')
banane_volante.save!

puts "Done"
puts 'Create vehicle8'

et_velo = Vehicle.new(
  owner: User.first,
  vehicle_type: "Old technology",
  total_seats: 1,
  summary: "A beatiful catapult, it can launch you far away",
  address: "2 rue Fontquentin, 42300 Roanne",
  price_per_day: 20,
  name: "Et_velo"
)
file = File.open(Rails.root.join('db/fixtures/vehicles/et_velo.jpg'))
et_velo.photo.attach(io: file, filename: 'et_velo.jpg', content_type: 'image/jpeg')
et_velo.save!

puts "Done"
puts 'Create vehicle9'

falaise = Vehicle.new(
  owner: User.first,
  vehicle_type: "Natural",
  total_seats: 10_000,
  summary: "Falaise pour vous et vos amis",
  address: "86 Rue Anatole France, 93700 Drancy",
  price_per_day: 1,
  name: "Falaise"
)
file = File.open(Rails.root.join('db/fixtures/vehicles/falaise.jpg'))
falaise.photo.attach(io: file, filename: 'falaise.jpg', content_type: 'image/jpeg')
falaise.save!

puts "Done"



puts 'Create vehicle10'

helico = Vehicle.new(
  owner: User.first,
  vehicle_type: "Avion",
  total_seats: 5,
  summary: "A beatiful copter",
  address: "95 Rue Roussy, 45000 Orléans",
  price_per_day: 500,
  name: "Helico"
)
file = File.open(Rails.root.join('db/fixtures/vehicles/helico.jpg'))
helico.photo.attach(io: file, filename: 'helico.jpg', content_type: 'image/jpeg')
helico.save!

puts "Done"
puts 'Create vehicle11'

heliporteur = Vehicle.new(
  owner: User.first,
  vehicle_type: "Avion",
  total_seats: 5,
  summary: "A beatiful Heliporter",
  address: "700 Rue Albin Durand, 84100 Orange",
  price_per_day: 200,
  name: "Heliporter"
)
file = File.open(Rails.root.join('db/fixtures/vehicles/heliporteur.jpg'))
heliporteur.photo.attach(io: file, filename: 'heliporteur.jpg', content_type: 'image/jpeg')
heliporteur.save!

puts "Done"
puts 'Create vehicle12'

navette = Vehicle.new(
  owner: User.first,
  vehicle_type: "Avion",
  total_seats: 1,
  summary: "A beatiful hoverbike for one!",
  address: "15 Rue Charles Lecocq, 75015 Paris",
  price_per_day: 200,
  name: "Hover Bike"
)
file = File.open(Rails.root.join('db/fixtures/vehicles/navette.jpg'))
navette.photo.attach(io: file, filename: 'navette.jpg', content_type: 'image/jpeg')
navette.save!

puts "Done"
puts 'Create vehicle13'

black_bird = Vehicle.new(
  owner: User.first,
  vehicle_type: "Vaisseau spatial",
  total_seats: 5000,
  summary: "An imperial destroyer where you can find Darth Vader",
  address: "157 Rue Jules Guesde, 59650 Villeneuve-d’ascq",
  price_per_day: 100_000_000,
  name: "Imperial Destroyer"
)
file = File.open(Rails.root.join('db/fixtures/vehicles/black_bird.jpg'))
black_bird.photo.attach(io: file, filename: 'black_bird.jpg', content_type: 'image/jpeg')
black_bird.save!

puts "Done"
puts 'Create vehicle14'

moto_volante = Vehicle.new(
  owner: User.first,
  vehicle_type: "Avion",
  total_seats: 2,
  summary: "A flying bike that will take you anywhere",
  address: "15 Rue Ledru Rollin, 94200 Ivry-sur-seine",
  price_per_day: 1_000,
  name: "Moto Volante"
)
file = File.open(Rails.root.join('db/fixtures/vehicles/moto_volante.jpg'))
moto_volante.photo.attach(io: file, filename: 'moto_volante.jpg', content_type: 'image/jpeg')
moto_volante.save!

puts "Done"
puts 'Create vehicle15'

nyan_cat = Vehicle.new(
  owner: User.first,
  vehicle_type: "Mythical creature",
  total_seats: 2,
  summary: "A cat that has rainbow stuck to him",
  address: "16 Rue du Pavé, 03100 Montluçon",
  price_per_day: 300,
  name: "Nyan cat"
)
file = File.open(Rails.root.join('db/fixtures/vehicles/nyan_cat.jpg'))
nyan_cat.photo.attach(io: file, filename: 'nyan_cat.jpg', content_type: 'image/jpeg')
nyan_cat.save!

puts "Done"
puts 'Create vehicle16'

pegasus = Vehicle.new(
  owner: User.first,
  vehicle_type: "Mythical creature",
  total_seats: 2,
  summary: "A horse with wings, it can also take you to Olympus",
  address: "3 Rue Lafaurie de Monbadon, 33000 Bordeaux",
  price_per_day: 314,
  name: "Pegasus"
)
file = File.open(Rails.root.join('db/fixtures/vehicles/pegasus.jpg'))
pegasus.photo.attach(io: file, filename: 'pegasus.jpg', content_type: 'image/jpeg')
pegasus.save!

puts "Done"
puts 'Create vehicle17'

ufo = Vehicle.new(
  owner: User.first,
  vehicle_type: "UFO",
  total_seats: 2,
  summary: "An X-wing that can fly you to Dagoba",
  address: "14 Rue de l'Espérance, 21000 Dijon",
  price_per_day: 4_000,
  name: "X-wing"
)
file = File.open(Rails.root.join('db/fixtures/vehicles/ufo.jpg'))
ufo.photo.attach(io: file, filename: 'ufo.jpg', content_type: 'image/jpeg')
ufo.save!

puts "Done"
puts 'Create vehicle18'

dragon = Vehicle.new(
  owner: User.first,
  vehicle_type: "Avion",
  total_seats: 2,
  summary: "A Carpet that will help you get to Jasmin",
  address: "42 Rue Pierre Brossolette, 95200 Sarcelles",
  price_per_day: 7_000,
  name: "Carpet"
)
file = File.open(Rails.root.join('db/fixtures/vehicles/dragon.jpg'))
dragon.photo.attach(io: file, filename: 'dragon.jpg', content_type: 'image/jpeg')
dragon.save!

puts "Done"
puts 'Create vehicle19'

moto_volante = Vehicle.new(
  owner: User.first,
  vehicle_type: "UFO",
  total_seats: 2,
  summary: "A Tie-fighter that will help you fight the rebels",
  address: "88 Rue de Fleury, 92140 Clamart",
  price_per_day: 1000,
  name: "Tie-Fighter"
)
file = File.open(Rails.root.join('db/fixtures/vehicles/moto_volante.jpg'))
moto_volante.photo.attach(io: file, filename: 'moto_volante.jpg', content_type: 'image/jpeg')
moto_volante.save!

puts "Done"
puts 'Create vehicle20'

parapante = Vehicle.new(
  owner: User.first,
  vehicle_type: "Avion",
  total_seats: 1,
  summary: "A flying bike that will help you get E.T. home",
  address: "19 Rue de la Dolve, 37000 Tours",
  price_per_day: 150,
  name: "Flying bike"
)
file = File.open(Rails.root.join('db/fixtures/vehicles/parapante.jpg'))
parapante.photo.attach(io: file, filename: 'parapante.jpg', content_type: 'image/jpeg')
parapante.save!

puts "Done"
puts 'Create vehicle21'

balet = Vehicle.new(
  owner: User.first,
  vehicle_type: "Avion",
  total_seats: 7,
  summary: "A flying car, to take you where we don't need roads",
  address: "10 Passage de la Poule Noire, 44100 Nantes",
  price_per_day: 2_500,
  name: "Flying car"
)
file = File.open(Rails.root.join('db/fixtures/vehicles/balet.jpg'))
balet.photo.attach(io: file, filename: 'balet.jpg', content_type: 'image/jpeg')
balet.save!

puts "Done"
puts 'Create vehicle22'

wingsuit = Vehicle.new(
  owner: User.first,
  vehicle_type: "Avion",
  total_seats: 1,
  summary: "A wingsuit for one",
  address: "8 Avenue Montaigne, 75008 Paris",
  price_per_day: 100,
  name: "Wingsuit"
)
file = File.open(Rails.root.join('db/fixtures/vehicles/wingsuit.jpg'))
wingsuit.photo.attach(io: file, filename: 'wingsuit.jpg', content_type: 'image/jpeg')
wingsuit.save!

puts "Done"
puts 'Create vehicle 23'

creature = Vehicle.new(
  owner: User.first,
  vehicle_type: "Old technology",
  total_seats: 1,
  summary: "A bird machine, designed by Leonardo Da Vinci",
  address: "15 Rue de Strasbourg, 44000 Nantes",
  price_per_day: 100,
  name: "Da Vinci"
)
file = File.open(Rails.root.join('db/fixtures/vehicles/creature.jpg'))
creature.photo.attach(io: file, filename: 'creature.jpg', content_type: 'image/jpeg')
creature.save!

puts "Done"
puts 'Create renting1'

start_date = Time.new(2021, 10, 31)
end_date = Time.new(2021, 11, 31)
Renting.create!(
  user: User.last,
  vehicle: black_bird,
  start_date: start_date,
  end_date: end_date,
  total_price: (end_date - start_date) * black_bird.price_per_day,
  status: "rented"
)
puts "Done"
puts 'Create renting2'

start_date = Time.new(2021, 11, 27)
end_date = Time.new(2021, 12, 10)

Renting.create!(
  user: User.last,
  vehicle: avion_jet,
  start_date: start_date,
  end_date: end_date,
  total_price: (end_date - start_date) * avion_jet.price_per_day,
  status: "in attempt"
)
