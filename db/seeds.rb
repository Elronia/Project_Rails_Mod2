# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Signup.destroy_all #joiner class comes first
Favorite.destroy_all
User.destroy_all
Place.destroy_all
Category.destroy_all

Signup.reset_pk_sequence #joiner class comes first
Favorite.reset_pk_sequence
User.reset_pk_sequence
Place.reset_pk_sequence
Category.reset_pk_sequence

user1 = User.create(first_name: "Nicholas", last_name: "Klein", email_address: "nicholas_klein@gmail.com", password: "abc123")
user2 = User.create(first_name: "Andrew", last_name: "Smith", email_address: "andrew_smith@gmail.com", password: "abc123")

place1 = Place.create(name: "Metropolitan Museum", location: "1000 5th Ave, New York, NY, 10028", hours_of_operation: "10am-5pm", date: "2020-09-20")
place2 = Place.create(name: "Central Park", location: "W 59th St, New York, NY 10019", hours_of_operation: "10am-5pm", date: "2020-09-21")

signup1 = Signup.create(user: user1, place: place1, date: "2020-09-05")
signup2 = Signup.create(user: user2, place: place2, date: "2020-09-06")

category1 = Category.create(place: place1, name: "Museums")
category2 = Category.create(place: place2, name: "NYC Parks")

favorites1 = Favorite.create(user: user1, place: place1)



