# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "creating users..."
User.create!(first_name: "Paulo", last_name: "Gomes", email: "pjgomes85@hotmail.com", password: "Test123")
User.create!(first_name: "Theo", last_name: "P.", email: "kmstheodore@gmail.com", password: "Test123")
User.create!(first_name: "Olivia", last_name: "S.", email: "oliviapatterson123@live.com", password: "Test123")
User.create!(first_name: "JC", last_name: "P.", email: "piette.jc@me.com", password: "Test123")
puts "users created!"
