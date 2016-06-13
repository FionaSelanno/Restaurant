# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Location.create ([restaurant_name: "De Gulden Draak", description: "Come and eat! We have different menus to choose from!", seats: 6, email: "gulden@draak.nl", phone: "0612435612", city: "Amsterdam", address: "Drakenweg 1"])
Location.create ([restaurant_name: "Wouter's Wicked Waffles", description: "I love to make waffles all day. Check the menu for more info!", seats: 4, email: "wouter@wickedwaffles.com", phone: "0612435612", city: "Rotterdam", address: "Wafelweg 201"])
