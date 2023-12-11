# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)



victor_app = Application.create!(applicant_name: "Victor Antonio Sanchez", address: "97 Jaffa Road", city: "Jerusalem", state: "Israel", zip_code: "9103401", application_status: "Pending",description: "Because I'm rich! :)")
sam_app = Application.create!(applicant_name: "Sam Puttman", address: "94 Jaffa Road", city: "Jerusalem", state: "Israel", zip_code: "9103401",application_status: "Pending", description: "Because I'm super rich! :)")
natalie_app = Application.create!(applicant_name: "Natalie Lan", address: "96 Jaffa Road", city: "Jerusalem", state: "Israel", zip_code: "9103401", description: "Because I'm super deduperdy rich! :)")

shelter_1 = Shelter.create!(name: "Aurora shelter", city: "Aurora, CO", foster_program: false, rank: 3)
shelter_2 = Shelter.create!(name: "Denver shelter", city: "Denver, CO", foster_program: false, rank: 5)
shelter_3 = Shelter.create!(name: "Boulder shelter", city: "Boulder, CO", foster_program: false, rank: 9)

pet_1 = shelter_1.pets.create!(name: "Roxy", breed: "labrador", age: 7, adoptable: true)
pet_2 = shelter_2.pets.create!(name: "Rocky", breed: "dalmation", age: 4, adoptable: true) 
pet_3 = shelter_3.pets.create!(name: "Brownie", breed: "ewok", age: 12, adoptable: true)

victor_app.pets << pet_1
sam_app.pets << pet_2
natalie_app.pets << pet_3
