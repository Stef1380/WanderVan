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
@aa = User.create(first_name: "Test", last_name: "TestTest", location: "Marseille", email: "test@wander.com", password: "azerty")
puts "user ok"

Van.create(user: User.last, brand: "Sunrise Suite", km: "3980000", description: "Parfait pour des vacances en famille", number_of_seat: "5", price: "10", categorie: "Adventure", location: "marseille")

Van.create(user: User.last, brand: "Cyril Summer", km: "43566", description: "Van assez rouiller mais il a un moteur des roues", number_of_seat: "5", price: "79", categorie: "Famille", location: "Lyon")

Van.create(user: User.last, brand: "Camper Cabin Deluxe", km: "2567", description: "Le camper cabin deluxe et l'evolution du Camber Cabine pour spacieux et plus familliale", number_of_seat: "4", price: "200", categorie: "Famille", location: "Paris")

Van.create(user: User.last, brand: "VW California", km: "78999", description: "Le VW est le van préferer des visiteur de la route 66", number_of_seat: "5", price: "69", categorie: "LoveRoom", location: "Montpellier")

Van.create(user: User.last, brand: "Sun Vibes", km: "39800", description: "L'été commence ne manquez pas ce van concue uniquement pour vos futur viré sur la cote", number_of_seat: "4", price: "145", categorie: "Love Room", location: "bordeaux")

Van.create(user: User.last, brand: "Snow trip", km: "43566", description: "Partez avec le snow trip pour des destniation assez glacé", number_of_seat: "5", price: "79", categorie: "Famille", location: "Lyon")

Van.create(user: User.last, brand: "Pets Friend 3000", km: "2567", description: "prenez votre animal de compagnie pour lui faire des couvrire les meilleur country avec le pets friend 3000", number_of_seat: "4", price: "109", categorie: "Pets", location: "Paris")

Van.create(user: User.last, brand: "Adventure 2000", km: "78999", description: "Vivez des aventure incroyable avec ce van parfaitement adapter pour n'importe quel type de route", number_of_seat: "5", price: "69", categorie: "Adventure", location: "Montpellier")

Van.create(user: User.last, brand: "Familly Dream", km: "39800", description: "Le voyage de rêve pour vous est votre famille avec le Familly dream", number_of_seat: "4", price: "Famille", categorie: "fun", location: "bordeaux")

Van.create(user: User.last, brand: "Surfer Suite", km: "43566", description: "parfait pour vous amie surfer", number_of_seat: "5", price: "79", categorie: "Adventure", location: "Lyon")

Van.create(user: User.last, brand: "Love Trip", km: "2567", description: "Parfait pour les plus romantique, ce van vous garentira un souvenir inoubliable a vous et votre compagne", number_of_seat: "4", price: "109", categorie: "Romantique", location: "Paris")

Van.create(user: User.last, brand: "Ghost 2000", km: "78999", description: "édition speciale pour vous mes amies fan d'horreur", number_of_seat: "5", price: "69", categorie: "Horreur", location: "Montpellier")

Van.create(user: User.last, brand: "Peugeot Partner", km: "43566", description: "le peugeot partner a été amenager expres pour vous et votre animal préferer", number_of_seat: "5", price: "79", categorie: "Pets", location: "Lyon")

Van.create(user: User.last, brand: "Camper Cabin", km: "2567", description: "Parfait pour couple ou même marier peux importe votre compagne tombera dans vos bras", number_of_seat: "4", price: "109", categorie: "Romantique", location: "Paris")

Van.create(user: User.last, brand: "VW transport", km: "78999", description: "Prenez votre lezard avec vous pour vivre vos meilleur vacances mais attention a ne pas le perdre", number_of_seat: "5", price: "69", categorie: "Pets", location: "Montpellier")


puts "all good"
