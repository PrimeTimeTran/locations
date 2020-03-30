# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'csv'


csv_text = File.read("#{Dir.pwd}/db/locations.csv")
csv = CSV.parse(csv_text, headers: true)

csv.each do |row|
  location = Location.new(city: 'Ho Chi Minh City', district: row[0], ward: row[1])
  if location.save
    puts "Yay!"
  else
    puts "Error!"
  end
end