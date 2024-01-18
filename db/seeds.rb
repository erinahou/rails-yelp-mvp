# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."

gimlet = {name: "Gimlet", address: "33 Russell St, Melbourne VIC 3000", category: "french" }
good_days = {name: "Good Days", address: "165 Sydney Rd, Brunswick VIC 3056", category: "chinese"}
ima = {name: "Ima Asa Yoru", address: "1 Duckett St, Brunswick VIC 3056", category: "japanese" }
bar_merenda = {name: "Bar Merenda", address: "Shop 3/22/24 Howe St, Daylesford VIC 3460", category: "italian" }
etta = {name: "Etta", address: "60 Lygon St, Brunswick East VIC 3057,", category: "italian" }

all_restaurants = [gimlet, good_days, ima, bar_merenda, etta]

all_restaurants.each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end

puts "Finished!"
