# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Deleting all cars and users"
User.destroy_all



puts "Creating users"

user_1 = User.new( first_name: "Jesus", last_name: "Antay",  email: "antay@gmail.com", password: "1234567", driver_license: "1234AA" )
user_1.save!

user_2 = User.new( first_name: "Victor", last_name: "Mendoza", email: "mendoza@gmail.com", password: "1234567", driver_license: "1234MM" )
user_2.save!

user_3 = User.new( first_name: "Camille", last_name: "Supery",  email: "supery@gmail.com", password: "1234567", driver_license: "1234SS" )
user_3.save!

user_4 = User.new( first_name: "Mara", last_name: "Chimeno",  email: "chimeno@gmail.com", password: "1234567", driver_license: "1234CC" )
user_4.save!

puts "Creating a car"

car_1 = Car.new(
  user_id: user_1.id,
  brand: "Shelby", 
  model: "427 Cobra", 
  description: "Anything attached to Carroll Shelby’s name is immediately worth your time. With an insane power-to-weight ratio, the Shelby 427 Cobra has a bit more giddyup than your Corolla. Plus, the hundreds of thousands of dollars you’d pay for one will seem like chump change compared to the $5.5 million shelled out for the ’66 Shelby 427 Cobra Super Snake.",
  year: "1966",
  license_plate: "EU2533",
  seats: "2",
  color: "Navy",
  transmission: "Automatic",
  energy_source: "Gasoline",
  price_per_hour: "49",
  location: "Madrid"
)
car_1.save!

sleep(1)

car_2 = Car.new(
  user_id: user_2.id,
  brand: "Jaguar", 
  model: "E-Type", 
  description: "Whether you pronounce it Jagwar or Jag-u-ar, everyone agrees the brand oozes style. The E-Type was released in 1961 to some pretty heavy praise. If Enzo Ferrari referred to it as, “The most beautiful car ever made,” well, that’s good enough for us.",
  year: "1961",
  license_plate: "US2731",
  seats: "2",
  color: "Blue",
  transmission: "Automatic",
  energy_source: "Gasoline",
  price_per_hour: "69",
  location: "Berlin"
)
car_2.save!

sleep(1)

car_3 = Car.new(
  user_id: user_3.id,
  brand: "Maseraty", 
  model: "Ghibli 4.7", 
  description: "The aggressive shark-shaped nose on the Maserati Ghibli is enough to place it firmly on this list. Plus, the Maserati name earns it plenty of clout. Basically, this car is what the Mazda Miata dreams of becoming as it falls asleep at night.",
  year: "1969",
  license_plate: "EU9831",
  seats: "4",
  color: "Grey",
  transmission: "Manual",
  energy_source: "Diesel",
  price_per_hour: "59",
  location: "Vienna"
)
car_3.save!

sleep(1)

car_4 = Car.new(
  user_id: user_4.id,
  brand: "Aston Martin", 
  model: "DB5", 
  description: "If it’s cool enough for Bond, it’s cool enough for us. If you had to pick one vehicle that James Bond relied on the most, you’d be hard-pressed not to go with the DB5, and the one from Goldfinger would look pretty sweet in our garage next to the cans of beer and lawn care products.",
  year: "1964",
  license_plate: "GB1553",
  seats: "2",
  color: "Grey",
  transmission: "Manual",
  energy_source: "Gasoline",
  price_per_hour: "39",
  location: "Dublin"
)
car_4.save!

sleep(1)

car_5 = Car.new(
  user_id: user_1.id,
  brand: "Mercedes", 
  model: "300SL Gullwing", 
  description: "The doors are only part of the reason this is one of the coolest cars to ever hit the pavement. The fact that the 300SL was the fastest production car at the time, means driving to your ad meetings in Manhattan wouldn’t be a bore.",
  year: "1957",
  license_plate: "EU1176",
  seats: "2",
  color: "Grey",
  transmission: "Automatic",
  energy_source: "Gasoline",
  price_per_hour: "49",
  location: "Barcelona"
)
car_5.save!

sleep(1)

car_6 = Car.new(
  user_id: user_2.id,
  brand: "Ford", 
  model: "429 Mustang Boss", 
  description: "You know you’re getting some sick power when they have to change the body of a Mustang just to accommodate your freakishly large engine. How could you not want to roll down the windows and listen to that sucker as you were cruising around? (Which would be a good idea since, due to the size of the engine, they couldn’t fit in any air conditioning.)",
  year: "1969",
  license_plate: "US3588",
  seats: "2",
  color: "Black",
  transmission: "Automatic",
  energy_source: "Gasoline",
  price_per_hour: "39",
  location: "Paris"
)
car_6.save!

sleep(1)

car_7 = Car.new(
  user_id: user_3.id,
  brand: "Corvette", 
  model: "Sting Ray", 
  description: "While nothing was wrong with the Corvette prior to ’63, when the Sting Ray rolled out it made the previous models look like chopped liver (fast & still somewhat attractive chopped liver). Besides the new look, the C2 Corvette was a bit lighter and handled far better than its predecessors. While some nice stylistic changes would be made in the coming years, there’s something about being first.",
  year: "1963",
  license_plate: "US0862",
  seats: "2",
  color: "Light Blue",
  transmission: "Automatic",
  energy_source: "Diesel",
  price_per_hour: "49",
  location: "Berlin"
)
car_7.save!

sleep(1)

car_8 = Car.new(
  user_id: user_4.id,
  brand: "Ferrari", 
  model: "Dino 246 GT", 
  description: "Far too often cars are rigid. The lines and angles are harsh and, unless there’s something crazy under the hood, they become a complete clone of something else. The soft lines on the Ferrari Dino 246 GT tells us this car is meant to be driven fast and playfully. If we had one, we’d oblige.",
  year: "1969",
  license_plate: "EU2501",
  seats: "4",
  color: "Red",
  transmission: "Manual",
  energy_source: "Gasoline",
  price_per_hour: "69",
  location: "Madrid"
)
car_8.save!

sleep(1)

car_9 = Car.new(
  user_id: user_1.id,
  brand: "Alfa Romeo", 
  model: "Spider Duetto", 
  description: "Something about this car just makes us want to drive the Italian countryside while occasionally stopping to drink local wines. Plus, any time you can get a car with style AND storage space, well you just hit the jackpot my friend. It’s perfect for storing all the sheets of paper with phone numbers on them.",
  year: "1966",
  license_plate: "EU2677",
  seats: "2",
  color: "Red",
  transmission: "Manual",
  energy_source: "Gasoline",
  price_per_hour: "49",
  location: "Barcelona"
)
car_9.save!

sleep(1)

car_10 = Car.new(
  user_id: user_2.id,
  brand: "Dodge", 
  model: "Charger", 
  description: "If there’s one thing we know about the ’69 Charger, it’s aerodynamic. At least that’s what we learned from Bo and Luke Duke. The ’69 Charger is a thing of beauty whether it’s a General Lee or not. It may never get the billing its Mustang counterparts always do, but the fastback look and all American style will never go out of fashion.",
  year: "1969",
  license_plate: "US2894",
  seats: "2",
  color: "Black",
  transmission: "Automatic",
  energy_source: "Gasoline",
  price_per_hour: "59",
  location: "Prague"
)
car_10.save!

sleep(1)

car_11 = Car.new(
  user_id: user_3.id,
  brand: "Lamborghini", 
  model: "Miura", 
  description: "We don’t know if it’s the most stylish car on the list, but as far as cred goes, well it inspired the whole “Let’s toss a couple of seats on a rocket” sports car idea. It also became a new and different Italian sports car option outside of the Ferrari’s of the world for auto enthusiasts at the time.",
  year: "1966",
  license_plate: "EU7799",
  seats: "2",
  color: "Electric yellow",
  transmission: "Automatic",
  energy_source: "Diesel",
  price_per_hour: "39",
  location: "Madrid"
)
car_11.save!

sleep(1)

car_12 = Car.new(
  user_id: user_4.id,
  brand: "Toyota", 
  model: "2000GT", 
  description: "If you’re noticing a small Bond theme here, you’re totally right. While Bond got a drop-top, the '69 Toyota 2000GT was stylish enough without one being offered up from the factory. The elongated front, along with the design in general, makes it feel much more like an Italian roadster than something you would picture purchasing for its 'dependable gas mileage.'",
  year: "1969",
  license_plate: "JP3545",
  seats: "2",
  color: "White",
  transmission: "Manual",
  energy_source: "Gasoline",
  price_per_hour: "39",
  location: "Paris"
)
car_12.save!

sleep(1)

car_13 = Car.new(
  user_id: user_1.id,
  brand: "Ferrari", 
  model: "250 GTE", 
  description: "The Ferrari 250 GTE was the sports car for the family man. It was for the guy who wanted a Ferrari but also wanted to get little Timmy to hockey practice with all his gear. As Road & Track said, “A not only grand, but glorious, touring car.” We’d tack on cool as well.",
  year: "1962",
  license_plate: "EU7176",
  seats: "4",
  color: "Red",
  transmission: "Manual",
  energy_source: "Gasoline",
  price_per_hour: "69",
  location: "Roma"
)
car_13.save!

sleep(1)

car_14 = Car.new(
  user_id: user_2.id,
  brand: "Datsun", 
  model: "240Z", 
  description: "The Jaguar E-Type’s Asian doppelgänger has the same beautiful look as the Jag with perhaps more brains underneath. The thought that went into the car became the hallmark of Japanese sports cars. See, being cool doesn’t just mean looking good (but it mostly means looking good).",
  year: "1970",
  license_plate: "EU5531",
  seats: "2",
  color: "Grey",
  transmission: "Manual",
  energy_source: "Diesel",
  price_per_hour: "49",
  location: "Roma"
)
car_14.save!

sleep(1)

car_15 = Car.new(
  user_id: user_3.id,
  brand: "Chevrolet", 
  model: "Camaro", 
  description: "It was pretty much a foregone conclusion that this list would include at least one Mustang and one Camaro. What can we say, we like old-school American muscle power. Seeing those silver stripes on a blue Z28 just strikes us as quintessentially cool.",
  year: "1969",
  license_plate: "US6680",
  seats: "4",
  color: "Blue",
  transmission: "Automatic",
  energy_source: "Gasoline",
  price_per_hour: "39",
  location: "London"
)
car_15.save!