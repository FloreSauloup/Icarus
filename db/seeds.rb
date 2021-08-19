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
  password: "password",
  first_name: "Mathis",
  last_name: "Colabo",
  phone_number: "+33612361000",
  description: "i'm freelance"
)
file = File.open(Rails.root.join('db/fixtures/users/mathis.jpg'))
mathis.avatar.attach(io: file, filename: 'mathis.jpg', content_type: 'image/jpg')
mathis.save!

puts "Done"
puts 'Create vehicle1'

<<<<<<< HEAD
nimbus = Vehicle.new(
  owner: mathis,
  vehicle_type: "Unusual",
  total_seats: 1,
  summary: "A broom that will take you to the moon!",
  address: "58, rue Pierre De Coubertin, 31100 TOULOUSE",
  price_per_day: 100,
  name: "Nimbus 2000"
)

file = File.open(Rails.root.join('db/fixtures/vehicles/nimbus.png'))
nimbus.photo.attach(io: file, filename: 'nimbus.png', content_type: 'image/png')
nimbus.save!
=======
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
>>>>>>> f7a1edeed2bda29ef29c420c0be3011db36bb014

puts "Done"
puts 'Create vehicle2'

<<<<<<< HEAD
milenium_falcon = Vehicle.new(
  owner: mathis,
  vehicle_type: "Futuristic",
=======
falcon = Vehicle.new(
  owner: User.last,
  vehicle_type: "Vaisseau spatial",
>>>>>>> f7a1edeed2bda29ef29c420c0be3011db36bb014
  total_seats: 7,
  summary: "Han Solo's smuggler's ship. With it you can help the rebels fight",
  address: "75, Place de la Madeleine, 75012 PARIS",
  price_per_day: 5_000,
  name: "Milenium Falcon"
)
<<<<<<< HEAD
file = File.open(Rails.root.join('db/fixtures/vehicles/faucon.png'))
milenium_falcon.photo.attach(io: file, filename: 'faucon.png', content_type: 'image/png')
milenium_falcon.save!
=======
file = File.open(Rails.root.join('db/fixtures/vehicles/falcon.jpg'))
falcon.photo.attach(io: file, filename: 'falcon.jpg', content_type: 'image/jpeg')
falcon.save!
>>>>>>> f7a1edeed2bda29ef29c420c0be3011db36bb014

puts "Done"
puts 'Create vehicle3'

<<<<<<< HEAD
jet = Vehicle.new(
  owner: nans,
  vehicle_type: "Contemporary",
=======
avion_de_chasse = Vehicle.new(
  owner: User.first,
  vehicle_type: "Avion",
>>>>>>> f7a1edeed2bda29ef29c420c0be3011db36bb014
  total_seats: 3,
  summary: "A luxuary jet",
  address: "73 rue Bonneterie, 25200 Montbéliard",
  price_per_day: 15_000,
  name: "Jet 100 2.0"
)
<<<<<<< HEAD
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
  address: "46, rue Grande Fusterie, 19100 Brive-la-gaillarde",
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
=======
file = File.open(Rails.root.join('db/fixtures/vehicles/avion_de_chasse.jpg'))
avion_de_chasse.photo.attach(io: file, filename: 'avion_de_chasse.jpg', content_type: 'image/jpeg')
avion_de_chasse.save!

puts "Done"
puts 'Create vehicle5'

avion_jet = Vehicle.new(
  owner: User.first,
  vehicle_type: "Avion",
>>>>>>> f7a1edeed2bda29ef29c420c0be3011db36bb014
  total_seats: 2,
  summary: "A plane, it can even shoot rockets",
  address: "15, rue Grande Fusterie, 91220 Brétigny-sur-orge",
  price_per_day: 150,
  name: "Plane"
)
<<<<<<< HEAD
file = File.open(Rails.root.join('db/fixtures/vehicles/avion.png'))
avion.photo.attach(io: file, filename: 'avion.png', content_type: 'image/png')
avion.save!
=======
file = File.open(Rails.root.join('db/fixtures/vehicles/avion_jet.jpg'))
avion_jet.photo.attach(io: file, filename: 'avion_jet.jpg', content_type: 'image/jpeg')
avion_jet.save!
>>>>>>> f7a1edeed2bda29ef29c420c0be3011db36bb014

puts "Done"
puts 'Create vehicle6'

baby = Vehicle.new(
  owner: nans,
  vehicle_type: "Unusual",
  total_seats: 1,
  summary: "A beatiful baby, for people that don't like other's children!",
  address: "65, rue Saint Germain, 95140  Garges-lès-gonesse",
  price_per_day: 50,
  name: "Flying baby"
)
file = File.open(Rails.root.join('db/fixtures/vehicles/enfant.png'))
baby.photo.attach(io: file, filename: 'enfant.png', content_type: 'image/png')
baby.save!

puts "Done"
puts 'Create vehicle7'

<<<<<<< HEAD
banane = Vehicle.new(
  owner: nans,
  vehicle_type: "Unusual",
=======
banane_volante = Vehicle.new(
  owner: User.first,
  vehicle_type: "UFO",
>>>>>>> f7a1edeed2bda29ef29c420c0be3011db36bb014
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

<<<<<<< HEAD
tapis = Vehicle.new(
  owner: nans,
  vehicle_type: "Antique",
  total_seats: 2,
  summary: "A beatiful carpet, it take you under the stars!",
  address: "53, rue Gustave Eiffel, 42300 Roanne",
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
  address: "35, rue Cazade, 93700 Drancy",
  price_per_day: 6_000,
  name: "Ovni"
)
file = File.open(Rails.root.join('db/fixtures/vehicles/ovnis.png'))
ovnis.photo.attach(io: file, filename: 'ovnis.png', content_type: 'image/png')
ovnis.save!
=======
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
>>>>>>> f7a1edeed2bda29ef29c420c0be3011db36bb014



puts 'Create vehicle10'

<<<<<<< HEAD
montgolfiere = Vehicle.new(
  owner: nans,
  vehicle_type: "Contemporary",
=======
helico = Vehicle.new(
  owner: User.first,
  vehicle_type: "Avion",
>>>>>>> f7a1edeed2bda29ef29c420c0be3011db36bb014
  total_seats: 5,
  summary: "A baloon to the moon",
  address: "86, rue Beauvau, 13004 Marseille",
  price_per_day: 100,
  name: "Montgolfiere"
)
file = File.open(Rails.root.join('db/fixtures/vehicles/montgolfiere.png'))
montgolfiere.photo.attach(io: file, filename: 'montgolfiere.png', content_type: 'image/png')
montgolfiere.save!

puts "Done"
puts 'Create vehicle11'

jetpack = Vehicle.new(
  owner: nans,
  vehicle_type: "Extreme",
  total_seats: 1,
  summary: "A one man's job, to be in GTA!",
  address: "95, Rue Roussy, 45000 Orléans",
  price_per_day: 500,
  name: "Jetpack"

)
file = File.open(Rails.root.join('db/fixtures/vehicles/jetpack.png'))
jetpack.photo.attach(io: file, filename: 'jetpack.png', content_type: 'image/png')
jetpack.save!

puts "Done"
puts 'Create vehicle12'

zeppelin = Vehicle.new(
  owner: nans,
  vehicle_type: "Antique",
  total_seats: 5,
  summary: "A zepplin, that will make you hot!",
  address: "10, Rue Roussy, 84100 Orange",

  price_per_day: 200,
  name: "Hindenburg"
)
file = File.open(Rails.root.join('db/fixtures/vehicles/zeppelin.png'))
zeppelin.photo.attach(io: file, filename: 'zeppelin.png', content_type: 'image/png')
zeppelin.save!

puts "Done"
puts 'Create vehicle13'

pegasus = Vehicle.new(
  owner: nans,
  vehicle_type: "Antique",
  total_seats: 1,
  summary: "A beatiful flying horse for one!",
  address: "24, Avenue des Pr’es, 95160 Montmorency",
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
  address: "2, Place Charles de Gaulle, 59650 Villeneuve-d’ascq",
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
  address: "16 Rue du Pavé, 03100 Montluçon",
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
  address: "1, rue des lieutemants Thomazo, 21000 Dijon",
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
  address: "16, rue de Périgord, 31000 Toulouse",
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
  address: "13, rue de la Bournelle, 44690 La Haye Fouassiere",
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
  total_price: (end_date - start_date) * nimbus.price_per_day,
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
  total_price: (end_date - start_date) * helico.price_per_day,
  status: "in attempt"
)
