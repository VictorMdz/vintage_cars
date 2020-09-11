# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Deleting all cars and users"
Booking.destroy_all
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
  description: "Anything attached to Carroll Shelby’s name is immediately worth your time. With an insane power-to-weight ratio, the Shelby 427 Cobra has a bit more giddyup than your Corolla. Plus, the hundreds of thousands of dollars you’d pay for one will seem like chump change compared to the $5.5 million shelled out for the ’66 Shelby 427 Cobra Super Snake.
  
  Vestibulum volutpat interdum est eget porttitor. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vestibulum interdum eros ut malesuada sodales. Ut vel eleifend ante, a tincidunt ligula. Curabitur risus ligula, congue ac lorem vel, interdum iaculis orci. Quisque pharetra nulla dolor, non tristique felis dignissim at.",
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
  description: "Whether you pronounce it Jagwar or Jag-u-ar, everyone agrees the brand oozes style. The E-Type was released in 1961 to some pretty heavy praise. If Enzo Ferrari referred to it as, “The most beautiful car ever made,” well, that’s good enough for us.
  
  Vestibulum volutpat interdum est eget porttitor. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vestibulum interdum eros ut malesuada sodales. Ut vel eleifend ante, a tincidunt ligula. Curabitur risus ligula, congue ac lorem vel, interdum iaculis orci. Quisque pharetra nulla dolor, non tristique felis dignissim at.",
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
  description: "The aggressive shark-shaped nose on the Maserati Ghibli is enough to place it firmly on this list. Plus, the Maserati name earns it plenty of clout. Basically, this car is what the Mazda Miata dreams of becoming as it falls asleep at night. 

  Vestibulum volutpat interdum est eget porttitor. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vestibulum interdum eros ut malesuada sodales. Ut vel eleifend ante, a tincidunt ligula. Curabitur risus ligula, congue ac lorem vel, interdum iaculis orci. Quisque pharetra nulla dolor, non tristique felis dignissim at.",
  year: "1969",
  license_plate: "EU9831",
  seats: "4",
  color: "Grey",
  transmission: "Manual",
  energy_source: "Diesel",
  price_per_hour: "59",
  location: "Prague"
)
car_3.save!

sleep(1)

car_4 = Car.new(
  user_id: user_4.id,
  brand: "Aston Martin",
  model: "DB5",
  description: "If it’s cool enough for Bond, it’s cool enough for us. If you had to pick one vehicle that James Bond relied on the most, you’d be hard-pressed not to go with the DB5, and the one from Goldfinger would look pretty sweet in our garage next to the cans of beer and lawn care products.
  
  Vestibulum volutpat interdum est eget porttitor. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vestibulum interdum eros ut malesuada sodales. Ut vel eleifend ante, a tincidunt ligula. Curabitur risus ligula, congue ac lorem vel, interdum iaculis orci. Quisque pharetra nulla dolor, non tristique felis dignissim at.",
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
  brand: "Mercedes-Benz",
  model: "190SL",
  description: "The doors are only part of the reason this is one of the coolest cars to ever hit the pavement. The fact that the 300SL was the fastest production car at the time, means driving to your ad meetings in Manhattan wouldn’t be a bore.
  
  Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus quis ante eget elit laoreet porttitor viverra posuere lorem. Aenean eleifend tincidunt velit, in pretium lorem efficitur quis. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nunc rhoncus nec libero quis eleifend. Donec quis erat tortor. Integer.",
  year: "1945",
  license_plate: "EU1176",
  seats: "4",
  color: "Grey",
  transmission: "Automatic",
  energy_source: "Diesel",
  price_per_hour: "69",
  location: "Prague"
)
car_5.save!

sleep(1)

car_6 = Car.new(
  user_id: user_2.id,
  brand: "Ford",
  model: "429 Mustang Boss",
  description: "You know you’re getting some sick power when they have to change the body of a Mustang just to accommodate your freakishly large engine. How could you not want to roll down the windows and listen to that sucker as you were cruising around? (Which would be a good idea since, due to the size of the engine, they couldn’t fit in any air conditioning.)
  
  Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus quis ante eget elit laoreet porttitor viverra posuere lorem. Aenean eleifend tincidunt velit, in pretium lorem efficitur quis. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nunc rhoncus nec libero quis eleifend. Donec quis erat tortor. Integer.",
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
  description: "While nothing was wrong with the Corvette prior to ’63, when the Sting Ray rolled out it made the previous models look like chopped liver (fast & still somewhat attractive chopped liver). Besides the new look, the C2 Corvette was a bit lighter and handled far better than its predecessors. While some nice stylistic changes would be made in the coming years, there’s something about being first.
  
  Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus quis ante eget elit laoreet porttitor viverra posuere lorem. Aenean eleifend tincidunt velit, in pretium lorem efficitur quis. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nunc rhoncus nec libero quis eleifend. Donec quis erat tortor. Integer.",
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
  description: "Far too often cars are rigid. The lines and angles are harsh and, unless there’s something crazy under the hood, they become a complete clone of something else. The soft lines on the Ferrari Dino 246 GT tells us this car is meant to be driven fast and playfully. If we had one, we’d oblige.
  
  Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus quis ante eget elit laoreet porttitor viverra posuere lorem. Aenean eleifend tincidunt velit, in pretium lorem efficitur quis. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nunc rhoncus nec libero quis eleifend. Donec quis erat tortor. Integer.",
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
  description: "Something about this car just makes us want to drive the Italian countryside while occasionally stopping to drink local wines. Plus, any time you can get a car with style AND storage space, well you just hit the jackpot my friend. It’s perfect for storing all the sheets of paper with phone numbers on them.
  
  Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus quis ante eget elit laoreet porttitor viverra posuere lorem. Aenean eleifend tincidunt velit, in pretium lorem efficitur quis. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nunc rhoncus nec libero quis eleifend. Donec quis erat tortor. Integer.",
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
  description: "If there’s one thing we know about the ’69 Charger, it’s aerodynamic. At least that’s what we learned from Bo and Luke Duke. The ’69 Charger is a thing of beauty whether it’s a General Lee or not. It may never get the billing its Mustang counterparts always do, but the fastback look and all American style will never go out of fashion.
    
  Duis non sem maximus mauris posuere faucibus non a odio. Duis in pellentesque nunc. Mauris enim massa, ultricies eget semper nec, ultrices quis augue. Morbi ac arcu commodo, ultricies dui sit amet, lacinia nibh. Aliquam viverra pharetra justo a placerat. Sed at metus eget mi tincidunt interdum. Etiam nec auctor.",
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
  description: "We don’t know if it’s the most stylish car on the list, but as far as cred goes, well it inspired the whole “Let’s toss a couple of seats on a rocket” sports car idea. It also became a new and different Italian sports car option outside of the Ferrari’s of the world for auto enthusiasts at the time.
  
  Duis non sem maximus mauris posuere faucibus non a odio. Duis in pellentesque nunc. Mauris enim massa, ultricies eget semper nec, ultrices quis augue. Morbi ac arcu commodo, ultricies dui sit amet, lacinia nibh. Aliquam viverra pharetra justo a placerat. Sed at metus eget mi tincidunt interdum. Etiam nec auctor.",
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
  description: "If you’re noticing a small Bond theme here, you’re totally right. While Bond got a drop-top, the '69 Toyota 2000GT was stylish enough without one being offered up from the factory. The elongated front, along with the design in general, makes it feel much more like an Italian roadster than something you would picture purchasing for its 'dependable gas mileage.'
  
  Duis non sem maximus mauris posuere faucibus non a odio. Duis in pellentesque nunc. Mauris enim massa, ultricies eget semper nec, ultrices quis augue. Morbi ac arcu commodo, ultricies dui sit amet, lacinia nibh. Aliquam viverra pharetra justo a placerat. Sed at metus eget mi tincidunt interdum. Etiam nec auctor.",
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
  description: "The Ferrari 250 GTE was the sports car for the family man. It was for the guy who wanted a Ferrari but also wanted to get little Timmy to hockey practice with all his gear. As Road & Track said, “A not only grand, but glorious, touring car.” We’d tack on cool as well.
  
  Duis non sem maximus mauris posuere faucibus non a odio. Duis in pellentesque nunc. Mauris enim massa, ultricies eget semper nec, ultrices quis augue. Morbi ac arcu commodo, ultricies dui sit amet, lacinia nibh. Aliquam viverra pharetra justo a placerat. Sed at metus eget mi tincidunt interdum. Etiam nec auctor.",
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
  description: "The Jaguar E-Type’s Asian doppelgänger has the same beautiful look as the Jag with perhaps more brains underneath. The thought that went into the car became the hallmark of Japanese sports cars. See, being cool doesn’t just mean looking good (but it mostly means looking good).
  
  Duis non sem maximus mauris posuere faucibus non a odio. Duis in pellentesque nunc. Mauris enim massa, ultricies eget semper nec, ultrices quis augue. Morbi ac arcu commodo, ultricies dui sit amet, lacinia nibh. Aliquam viverra pharetra justo a placerat. Sed at metus eget mi tincidunt interdum. Etiam nec auctor.",
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
  description: "It was pretty much a foregone conclusion that this list would include at least one Mustang and one Camaro. What can we say, we like old-school American muscle power. Seeing those silver stripes on a blue Z28 just strikes us as quintessentially cool.
  
  Suspendisse mollis quam orci, sed iaculis tortor dictum ac. Proin a enim nec libero volutpat condimentum. Nunc in sem ut sapien placerat semper. Praesent sollicitudin massa eu justo dignissim, ac rutrum nisi scelerisque. Phasellus scelerisque varius turpis et tincidunt. In ornare, velit accumsan sollicitudin auctor, nunc erat rutrum sem, ac.",
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

sleep(1)

car_16 = Car.new(
  user_id: user_4.id,
  brand: "Porshe",
  model: "911",
  description: "The Porsche 911 represents vintage driving at its best—particularly during the golden era before the car's 1974 redesign. 'There's magic in the early 911,' Hagerty says. 'It's an amazingly well-built machine that delivers one of the most honest driving experiences of any sports car ever built.' Even by today's standards.

  Suspendisse mollis quam orci, sed iaculis tortor dictum ac. Proin a enim nec libero volutpat condimentum. Nunc in sem ut sapien placerat semper. Praesent sollicitudin massa eu justo dignissim, ac rutrum nisi scelerisque. Phasellus scelerisque varius turpis et tincidunt. In ornare, velit accumsan sollicitudin auctor, nunc erat rutrum sem, ac.",
  year: "1974",
  license_plate: "EU2333",
  seats: "4",
  color: "White",
  transmission: "Manual",
  energy_source: "Diesel",
  price_per_hour: "79",
  location: "Marseille"
)
car_16.save!

sleep(1)


car_17 = Car.new(
  user_id: user_2.id,
  brand: "Ford",
  model: "Spitfire",
  description: "This ‘78 Triumph Spitfire has been a show car and is ready for you to take a spin! Rare functioning overdrive and new upholstery. Available for all types of events.
  
  Proin finibus pretium quam, ac aliquet enim egestas nec. Sed mollis, mauris a pretium faucibus, ex urna elementum ante, sed consequat augue sapien ut enim. Nam vestibulum diam dui, vitae vehicula est dictum lobortis. Nulla eu enim et odio commodo vestibulum. Pellentesque feugiat a diam vel pellentesque. Quisque ante tellus.",
  year: "1974",
  license_plate: "JP3244",
  seats: "2",
  color: "Green",
  transmission: "Manual",
  energy_source: "Gasoline",
  price_per_hour: "49",
  location: "Lyon"
)
car_17.save!

sleep(1)

car_18 = Car.new(
  user_id: user_3.id,
  brand: "International",
  model: "Centurion",
  description: "This ‘78 Triumph Spitfire has been a show car and is ready for you to take a spin! Rare functioning overdrive and new upholstery. Available for all types of events.
  
  Proin finibus pretium quam, ac aliquet enim egestas nec. Sed mollis, mauris a pretium faucibus, ex urna elementum ante, sed consequat augue sapien ut enim. Nam vestibulum diam dui, vitae vehicula est dictum lobortis. Nulla eu enim et odio commodo vestibulum. Pellentesque feugiat a diam vel pellentesque. Quisque ante tellus.",
  year: "1973",
  license_plate: "JP3244",
  seats: "4",
  color: "White",
  transmission: "Automatic",
  energy_source: "Gasoline",
  price_per_hour: "69",
  location: "Madrid"
)
car_18.save!

sleep(1)

car_19 = Car.new(
  user_id: user_4.id,
  brand: "Chevrolet",
  model: "Master Deluxe Sedan",
  description: "The Classic Car Club of America is even stricter in their description of classics. They only consider cars between the years 1915 and 1948 to be classic. The CCCA goes another step further, and only includes vehicles 'distinguished by their respective fine design, high engineering standards and superior workmanship.'
  
  Proin finibus pretium quam, ac aliquet enim egestas nec. Sed mollis, mauris a pretium faucibus, ex urna elementum ante, sed consequat augue sapien ut enim. Nam vestibulum diam dui, vitae vehicula est dictum lobortis. Nulla eu enim et odio commodo vestibulum. Pellentesque feugiat a diam vel pellentesque. Quisque ante tellus.",
  year: "1937",
  license_plate: "MA6533",
  seats: "2",
  color: "Red",
  transmission: "Manual",
  energy_source: "Gasoline",
  price_per_hour: "39",
  location: "London"
)
car_19.save!

sleep(1)

car_20 = Car.new(
  user_id: user_1.id,
  brand: "Ford",
  model: "Fairlane 500",
  description: "Classic, antique, and vintage cars may also be classified differently depending on the state. For example, in New York, vehicles that are 25 years or older can receive vintage historical plates, while Montana requires the car to be at least 30 years old (through 1934).
  
  Proin finibus pretium quam, ac aliquet enim egestas nec. Sed mollis, mauris a pretium faucibus, ex urna elementum ante, sed consequat augue sapien ut enim. Nam vestibulum diam dui, vitae vehicula est dictum lobortis. Nulla eu enim et odio commodo vestibulum. Pellentesque feugiat a diam vel pellentesque. Quisque ante tellus.",
  year: "1937",
  license_plate: "MA6533",
  seats: "4",
  color: "Purple",
  transmission: "Manual",
  energy_source: "Diesel",
  price_per_hour: "49",
  location: "London"
)
car_20.save!

sleep(1)

car_21 = Car.new(
  user_id: user_2.id,
  brand: "International",
  model: "Cutlass",
  description: "You'll have to find one that specializes in this type of loan. Each company has its own definitions, so be sure that you fully understand whether you will be able to obtain a specialized loan or insurance policy before putting cash.
  
  Proin finibus pretium quam, ac aliquet enim egestas nec. Sed mollis, mauris a pretium faucibus, ex urna elementum ante, sed consequat augue sapien ut enim. Nam vestibulum diam dui, vitae vehicula est dictum lobortis. Nulla eu enim et odio commodo vestibulum. Pellentesque feugiat a diam vel pellentesque. Quisque ante tellus.",
  year: "1972",
  license_plate: "PO2323",
  seats: "2",
  color: "Blue",
  transmission: "Manual",
  energy_source: "Gasoline",
  price_per_hour: "55",
  location: "Manchester"
)
car_21.save!

sleep(1)

car_22 = Car.new(
  user_id: user_3.id,
  brand: "Toyota",
  model: "Plus 4",
  description: "The Classic Car Club of America is even stricter in their description of classics. They only consider cars between the years 1915 and 1948 to be classic. The CCCA goes another step further, and only includes vehicles 'distinguished by their respective fine design, high engineering standards and superior workmanship.'
  
  Proin finibus pretium quam, ac aliquet enim egestas nec. Sed mollis, mauris a pretium faucibus, ex urna elementum ante, sed consequat augue sapien ut enim. Nam vestibulum diam dui, vitae vehicula est dictum lobortis. Nulla eu enim et odio commodo vestibulum. Pellentesque feugiat a diam vel pellentesque. Quisque ante tellus.",
  year: "1957",
  license_plate: "US5553",
  seats: "2",
  color: "White",
  transmission: "Manual",
  energy_source: "Gasoline",
  price_per_hour: "34",
  location: "Marseille"
)
car_22.save!

sleep(1)


car_23 = Car.new(
  user_id: user_4.id,
  brand: "Nissan",
  model: "Trans AM",
  description: "You'll have to find one that specializes in this type of loan. Each company has its own definitions, so be sure that you fully understand whether you will be able to obtain a specialized loan or insurance policy before putting cash.
  
  Proin finibus pretium quam, ac aliquet enim egestas nec. Sed mollis, mauris a pretium faucibus, ex urna elementum ante, sed consequat augue sapien ut enim. Nam vestibulum diam dui, vitae vehicula est dictum lobortis. Nulla eu enim et odio commodo vestibulum. Pellentesque feugiat a diam vel pellentesque. Quisque ante tellus.",
  year: "1933",
  license_plate: "4533VL",
  seats: "4",
  color: "Black",
  transmission: "Manual",
  energy_source: "Gasoline",
  price_per_hour: "59",
  location: "London"
)
car_23.save!

sleep(1)



car_24 = Car.new(
  user_id: user_1.id,
  brand: "Ford",
  model: "Mustang Mach 1",
  description: "The Classic Car Club of America is even stricter in their description of classics. They only consider cars between the years 1915 and 1948 to be classic. The CCCA goes another step further, and only includes vehicles 'distinguished by their respective fine design, high engineering standards and superior workmanship.'
  
  Proin finibus pretium quam, ac aliquet enim egestas nec. Sed mollis, mauris a pretium faucibus, ex urna elementum ante, sed consequat augue sapien ut enim. Nam vestibulum diam dui, vitae vehicula est dictum lobortis. Nulla eu enim et odio commodo vestibulum. Pellentesque feugiat a diam vel pellentesque. Quisque ante tellus.",
  year: "1966",
  license_plate: "US6511",
  seats: "2",
  color: "Black",
  transmission: "Manual",
  energy_source: "Gasoline",
  price_per_hour: "49",
  location: "Barcelona"
)
car_24.save!

sleep(1)


car_25 = Car.new(
  user_id: user_2.id,
  brand: "Nissan",
  model: "PAO",
  description: "Classic, antique, and vintage cars may also be classified differently depending on the state. For example, in New York, vehicles that are 25 years or older can receive vintage historical plates, while Montana requires the car to be at least 30 years old (through 1934).
  
  Proin finibus pretium quam, ac aliquet enim egestas nec. Sed mollis, mauris a pretium faucibus, ex urna elementum ante, sed consequat augue sapien ut enim. Nam vestibulum diam dui, vitae vehicula est dictum lobortis. Nulla eu enim et odio commodo vestibulum. Pellentesque feugiat a diam vel pellentesque. Quisque ante tellus.",
  year: "1971",
  license_plate: "JPM313",
  seats: "2",
  color: "Blue",
  transmission: "Automatic",
  energy_source: "Diesel",
  price_per_hour: "29",
  location: "Prague"
)
car_25.save!

sleep(1)


car_26 = Car.new(
  user_id: user_3.id,
  brand: "Mercedes-Benz",
  model: "Scout 800",
  description: "The Classic Car Club of America is even stricter in their description of classics. They only consider cars between the years 1915 and 1948 to be classic. The CCCA goes another step further, and only includes vehicles 'distinguished by their respective fine design, high engineering standards and superior workmanship.'
  
  Proin finibus pretium quam, ac aliquet enim egestas nec. Sed mollis, mauris a pretium faucibus, ex urna elementum ante, sed consequat augue sapien ut enim. Nam vestibulum diam dui, vitae vehicula est dictum lobortis. Nulla eu enim et odio commodo vestibulum. Pellentesque feugiat a diam vel pellentesque. Quisque ante tellus.",
  year: "1971",
  license_plate: "US2313",
  seats: "2",
  color: "Grey",
  transmission: "Manual",
  energy_source: "Gasoline",
  price_per_hour: "29",
  location: "Manchester"
)
car_26.save!

sleep(1)

car_27 = Car.new(
  user_id: user_4.id,
  brand: "Ford",
  model: "Fairlane 500",
  description: "Classic, antique, and vintage cars may also be classified differently depending on the state. For example, in New York, vehicles that are 25 years or older can receive vintage historical plates, while Montana requires the car to be at least 30 years old (through 1934).
  
  Proin finibus pretium quam, ac aliquet enim egestas nec. Sed mollis, mauris a pretium faucibus, ex urna elementum ante, sed consequat augue sapien ut enim. Nam vestibulum diam dui, vitae vehicula est dictum lobortis. Nulla eu enim et odio commodo vestibulum. Pellentesque feugiat a diam vel pellentesque. Quisque ante tellus.",
  year: "1965",
  license_plate: "MA9911",
  seats: "4",
  color: "Red",
  transmission: "Manual",
  energy_source: "Diesel",
  price_per_hour: "49",
  location: "Marseille"
)
car_27.save!

sleep(1)


car_28 = Car.new(
  user_id: user_1.id,
  brand: "Mercedes-Benz",
  model: "AD 1500",
  description: "Usually, the classic car moniker applies to vehicles over 20 years old. Antique cars are over 45 years old, and vintage cars are built between 1919 and 1930. But as with many subjects in the motoring world, not everyone can agree on a single definition. State DMVs, insurance companies, and classic car clubs classify each one differently.
  
  Proin finibus pretium quam, ac aliquet enim egestas nec. Sed mollis, mauris a pretium faucibus, ex urna elementum ante, sed consequat augue sapien ut enim. Nam vestibulum diam dui, vitae vehicula est dictum lobortis. Nulla eu enim et odio commodo vestibulum. Pellentesque feugiat a diam vel pellentesque. Quisque ante tellus.",
  year: "1954",
  license_plate: "LA1212",
  seats: "2",
  color: "Red",
  transmission: "Automatic",
  energy_source: "Gasoline",
  price_per_hour: "59",
  location: "Bilbao"
)
car_28.save!

sleep(1)

car_29 = Car.new(
  user_id: user_2.id,
  brand: "Aston Martin",
  model: "DB5 Convertible",
  description: "You'll have to find one that specializes in this type of loan. Each company has its own definitions, so be sure that you fully understand whether you will be able to obtain a specialized loan or insurance policy before putting cash.
  
  Proin finibus pretium quam, ac aliquet enim egestas nec. Sed mollis, mauris a pretium faucibus, ex urna elementum ante, sed consequat augue sapien ut enim. Nam vestibulum diam dui, vitae vehicula est dictum lobortis. Nulla eu enim et odio commodo vestibulum. Pellentesque feugiat a diam vel pellentesque. Quisque ante tellus.",
  year: "1945",
  license_plate: "RO9931",
  seats: "4",
  color: "Navy",
  transmission: "Automatic",
  energy_source: "Gasoline",
  price_per_hour: "55",
  location: "Bern"
)
car_29.save!

sleep(1)

car_30 = Car.new(
  user_id: user_3.id,
  brand: "Alfa Romeo",
  model: "Seduction",
  description: "Usually, the classic car moniker applies to vehicles over 20 years old. Antique cars are over 45 years old, and vintage cars are built between 1919 and 1930. But as with many subjects in the motoring world, not everyone can agree on a single definition. State DMVs, insurance companies, and classic car clubs classify each one differently.
  
  Proin finibus pretium quam, ac aliquet enim egestas nec. Sed mollis, mauris a pretium faucibus, ex urna elementum ante, sed consequat augue sapien ut enim. Nam vestibulum diam dui, vitae vehicula est dictum lobortis. Nulla eu enim et odio commodo vestibulum. Pellentesque feugiat a diam vel pellentesque. Quisque ante tellus.",
  year: "AL3313",
  license_plate: "Madrid",
  seats: "2",
  color: "Blue",
  transmission: "Automatic",
  energy_source: "Gasoline",
  price_per_hour: "45",
  location: "Lyon"
)
car_30.save!

sleep(1)

car_31 = Car.new(
  user_id: user_4.id,
  brand: "Jaguar",
  model: "Forward Q100",
  description: "You'll have to find one that specializes in this type of loan. Each company has its own definitions, so be sure that you fully understand whether you will be able to obtain a specialized loan or insurance policy before putting cash.
  
  Proin finibus pretium quam, ac aliquet enim egestas nec. Sed mollis, mauris a pretium faucibus, ex urna elementum ante, sed consequat augue sapien ut enim. Nam vestibulum diam dui, vitae vehicula est dictum lobortis. Nulla eu enim et odio commodo vestibulum. Pellentesque feugiat a diam vel pellentesque. Quisque ante tellus.",
  year: "1981",
  license_plate: "SQ2322",
  seats: "4",
  color: "Yellow",
  transmission: "Automatic",
  energy_source: "Gasoline",
  price_per_hour: "45",
  location: "Bern"
)
car_31.save!

sleep(1)

car_32 = Car.new(
  user_id: user_1.id,
  brand: "Ferrari",
  model: "Grill 100",
  description: "Usually, the classic car moniker applies to vehicles over 20 years old. Antique cars are over 45 years old, and vintage cars are built between 1919 and 1930. But as with many subjects in the motoring world, not everyone can agree on a single definition. State DMVs, insurance companies, and classic car clubs classify each one differently. And some classifications overlap between classics and antiques.
  
  Proin finibus pretium quam, ac aliquet enim egestas nec. Sed mollis, mauris a pretium faucibus, ex urna elementum ante, sed consequat augue sapien ut enim. Nam vestibulum diam dui, vitae vehicula est dictum lobortis. Nulla eu enim et odio commodo vestibulum. Pellentesque feugiat a diam vel pellentesque. Quisque ante tellus.",
  year: "1938",
  license_plate: "FR1212",
  seats: "2",
  color: "Red",
  transmission: "Automatic",
  energy_source: "Gasoline",
  price_per_hour: "45",
  location: "Munich"
)
car_32.save!

sleep(1)


car_33 = Car.new(
  user_id: user_1.id,
  brand: "Ferrari",
  model: "Spitfire",
  description: "This ‘78 Triumph Spitfire has been a show car and is ready for you to take a spin! Rare functioning overdrive and new upholstery. Available for all types of events. Suspendisse mollis quam orci, sed iaculis tortor dictum ac. Proin a enim nec libero volutpat condimentum. 
  
  Nunc in sem ut sapien placerat semper. Praesent sollicitudin massa eu justo dignissim, ac rutrum nisi scelerisque. Phasellus scelerisque varius turpis et tincidunt. In ornare, velit accumsan sollicitudin auctor, nunc erat rutrum sem, ac.",
  year: "1974",
  license_plate: "JP3244",
  seats: "2",
  color: "Green",
  transmission: "Manual",
  energy_source: "Gasoline",
  price_per_hour: "49",
  location: "Milan"
)
car_33.save!

sleep(1)



car_34 = Car.new(
  user_id: user_4.id,
  brand: "Maserati",
  model: "Don Mafia",
  description: "This ‘78 Triumph Spitfire has been a show car and is ready for you to take a spin! Rare functioning overdrive and new upholstery. Available for all types of events. Suspendisse mollis quam orci, sed iaculis tortor dictum ac. Proin a enim nec libero volutpat condimentum. 
  
  Nunc in sem ut sapien placerat semper. Praesent sollicitudin massa eu justo dignissim, ac rutrum nisi scelerisque. Phasellus scelerisque varius turpis et tincidunt. In ornare, velit accumsan sollicitudin auctor, nunc erat rutrum sem, ac.",
  year: "1961",
  license_plate: "PO3244",
  seats: "2",
  color: "Black",
  transmission: "Manual",
  energy_source: "Gasoline",
  price_per_hour: "55",
  location: "Milan"
)
car_34.save!

sleep(1)

