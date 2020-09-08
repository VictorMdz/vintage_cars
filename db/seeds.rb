# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Deleting all cars"
Car.destroy_all

puts "Creating users"

user_1 = User.new( first_name: "Jesus", email: "jesusi@gmail.com", password: "1234567", last_name: "Antay", driver_license: "121221" )
user_1.save!

puts "Creating a car"

car_1 = Car.new(
  user_id: user_1.id,
  brand: "Porshe", 
  model: "Cayma", 
  description: "German",
  year: "1745",
  license_plate: "233YY",
  seats: "3",
  color: "Yellow",
  transmission: "Manual",
  energy_source: "Hybrid",
  price_per_hour: "65",
  photo: "ESTA LA PRIMERA FOTO"
)

car_1.save!
