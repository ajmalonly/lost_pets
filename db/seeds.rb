# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'

# db/seeds.rb

# Clear existing pet records (optional)
Pet.destroy_all

# Create new pets with Faker data
20.times do
  pet = Pet.new(
    name: Faker::Creature::Dog.name,      # Generate dog names
    address: Faker::Address.full_address, # Generate full addresses
    species: %w[dog cat rabbit snake turtle].sample, # Randomly select a species
    found_on: Faker::Date.between(from: 1.year.ago, to: Date.today) # Random date within the past year
  )
  pet.save!
end

puts "Seed data created successfully."
