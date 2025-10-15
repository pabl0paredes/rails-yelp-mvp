# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# 1. Clean the database 🗑️
puts "Cleaning database..."
Restaurant.destroy_all

# 2. Create the instances 🏗️
puts "Creating restaurants..."
Restaurant.create!(name: "Yangtse", address: "Las Dalias 1181", phone_number: "+56973062856", category: "chinese")
puts "Created Dishoom"
Restaurant.create!(name: "La Piccola", address: "Av. Príncipe de Gales 9801", category: "italian")
puts "Created La Piccola"
Restaurant.create!(name: "Margarita", address: "Gran Avenida 023", phone_number: "+56222752890", category: "italian")
puts "Created Margarita"
Restaurant.create!(name: "Niu Sushi", address: "Av. Providencia 2066", category: "japanese")
puts "Created Niu Sushi"
Restaurant.create!(name: "Baco", address: "Ricardo Lyon 21", phone_number: "2281 8190", category: "french")
puts "Created Baco"

# 3. Display a message 🎉
puts "Finished! Created #{Restaurant.count} restaurants."
