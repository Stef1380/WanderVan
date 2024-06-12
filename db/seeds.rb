# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts "seeding"
Booking.destroy_all
Van.destroy_all
User.destroy_all
User.create(first_name: "Test", last_name: "TestTest", location: "Marseille", email: "test@wander.com", password: "azerty")
puts "user ok"
Van.create(user: User.first, brand: "VW California", km: "39800", description: "van authentique pour les baroudeurs", number_of_seat: "4", price: "145", categorie: "fun", location: "bordeaux")
Van.create(user: User.first, brand: "Peugeot Partner", km: "43566", description: "tout confort", number_of_seat: "5", price: "79", categorie: "luxe", location: "Lyon")
Van.create(user: User.first, brand: "VW California", km: "2567", description: " version moderne", number_of_seat: "4", price: "109", categorie: "love", location: "Paris")
Van.create(user: User.first, brand: "VW transport", km: "78999", description: "espace et confort", number_of_seat: "5", price: "69", categorie: "horreur", location: "Montpellier")
puts "all good"
