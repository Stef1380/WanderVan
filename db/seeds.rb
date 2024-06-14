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
User.create(first_name: "Tom", last_name: "G", location: "Marseille", email: "tom@wander.com", password: "azerty")
User.create(first_name: "Stephane", last_name: "B", location: "Marseille", email: "stef@wander.com", password: "azerty")
puts "user ok"


Van.create(user: User.first, brand: "Sunrise Suite", km: "398000", description: "Parfait pour des vacances en famille", number_of_seat: "5", price: "10", categorie: "Adventure", location: "marseille")

Van.create(user: User.first, brand: "Cyril Summer", km: "43566", description: "Van assez rouillé mais il a un moteur et des roues", number_of_seat: "5", price: "79", categorie: "Famille", location: "Lyon")

Van.create(user: User.first, brand: "Camper Cabin Deluxe", km: "2567", description: "Le camper cabin deluxe est l'evolution du Camber Cabine plus spacieux pour la famille", number_of_seat: "4", price: "200", categorie: "Famille", location: "Paris")

Van.create(user: User.first, brand: "VW California", km: "78999", description: "Le VW est le van préferer des visiteurs de la route 66", number_of_seat: "5", price: "69", categorie: "LoveRoom", location: "Montpellier")

Van.create(user: User.first, brand: "Sun Vibes", km: "39800", description: "L'été commence, ne manquez pas ce van conçu pour vos futures virées sur la côte", number_of_seat: "4", price: "145", categorie: "Love Room", location: "bordeaux")

Van.create(user: User.first, brand: "Snow trip", km: "43566", description: "Partez avec le snow trip pour des destninations frappées", number_of_seat: "5", price: "79", categorie: "Famille", location: "Lyon")

Van.create(user: User.first, brand: "Pets Friend 3000", km: "2567", description: "prenez votre animal de compagnie pour lui faire découvrir les meilleurs bacs à sable", number_of_seat: "4", price: "109", categorie: "Pets", location: "Paris")

Van.create(user: User.first, brand: "Adventure 2000", km: "78999", description: "Vivez des aventures incroyables avec ce van parfaitement adapté pour n'importe quel type de route", number_of_seat: "5", price: "69", categorie: "Adventure", location: "Montpellier")

Van.create(user: User.first, brand: "Familly Dream", km: "39800", description: "Le voyage de rêve pour vous et votre famille avec le Familly dream", number_of_seat: "4", price: "Famille", categorie: "fun", location: "bordeaux")

Van.create(user: User.first, brand: "Surfer Suite", km: "43566", description: "parfait pour vous et vos amies surfeuses", number_of_seat: "5", price: "79", categorie: "Adventure", location: "Lyon")

Van.create(user: User.first, brand: "Love Trip", km: "2567", description: "Romantique, ce van vous garantira un souvenir inoubliable à deux", number_of_seat: "4", price: "109", categorie: "Romantique", location: "Paris")

Van.create(user: User.first, brand: "Ghost 2000", km: "78999", description: "édition speciale  pour les fans d'horreur, ne partez pas seul, vous n'êtes pas sûr de revenir", number_of_seat: "5", price: "69", categorie: "Horreur", location: "Montpellier")

Van.create(user: User.first, brand: "Peugeot Partner", km: "43566", description: "le peugeot partner est amenagé pour vous et votre animal préferé, les éléphants ne sont pas acceptés", number_of_seat: "5", price: "79", categorie: "Pets", location: "Lyon")

Van.create(user: User.first, brand: "Camper Cabin", km: "2567", description: "Parfait pour les voyages de noces... ou pour tomber amoureux", number_of_seat: "4", price: "109", categorie: "Romantique", location: "Paris")

Van.create(user: User.first, brand: "VW transport", km: "78999", description: "Prenez votre lézard avec vous pour vivre vos meilleures vacances mais attention à ne pas le perdre! *vivarium inclu", number_of_seat: "5", price: "69", categorie: "Pets", location: "Montpellier")

puts "all good"
