# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Restaurants
de_gulden_draak = Location.create ({restaurant_name: "De Gulden Draak", description: "Come and eat! We have different menus to choose from!", seats: 6, email: "gulden@draak.nl", phone: "0612435612", city: "Amsterdam", address: "Drakenweg 1"})
wouters_wicked = Location.create ({restaurant_name: "Wouter's Wicked Waffles", description: "I love to make waffles all day. Check the menu for more info!", seats: 4, email: "wouter@wickedwaffles.com", phone: "0612435612", city: "Rotterdam", address: "Wafelweg 201"})
la_garage = Location.create ({restaurant_name: "La Garage", description: "The fanciest garage in town!", seats: 5, email: "pieter@lagarage.com", phone: "0613371337", city: "Utrecht", address: "garage 21"})
just_oreos = Location.create ({restaurant_name: "Just Oreo's", description: "We love working with Oreo's", seats: 4, email: "oreo@cookie.com", phone: "0612312337", city: "Amsterdam", address: "Plekje langs de Weg 123"})
blazin_it = Location.create ({restaurant_name: "Blazing it!", description: "Couldn be more relaxed.", seats: 420, email: "420@blazinit.com", phone: "06420420", city: "Amsterdam", address: "Hightower 420"})


# Users create
ramon = User.create(email:"ramon@test.nl", password:"abcd1234")
steven = User.create(email:"steven@test.nl", password:"abcd1234")
fiona = User.create(email:"fiona@test.nl", password:"abcd1234")

# Menu create
Menu.create({menu_name:"Hutspot", menu_discription:"Hutspot is a typical Dutch dish. It's mashed potatoes with carrots and onion. Together with a Dutch saucage called 'Boerenworst' and a buttery gravy you will taste real Dutch cuisine", cuisine:"Dutch", price:8, location_id:de_gulden_draak.id})
Menu.create({menu_name:"Chicken Tagine", menu_discription:"In a traditional Tagin cooked chicken with dates en almonds. Sidedishes: couscous, bread and olives. Come and taste Moroccon food!", cuisine:"Moroccon", price: 9})
Menu.create({menu_name:"Vegetarian bbq", menu_discription:"Taste our vegeratian bbq. I only use organic products out of my own garden", cuisine: "vegeratian", price: 10})
Menu.create({menu_name:"Coq au vin", menu_discription:"French stew with chicken, red wine and seasonal veggies", cuisine:"French", price:12})
Menu.create({menu_name:"Mussels", menu_discription:"Cooked in white wine", cuisine:"Belgium", price:8})
Menu.create({menu_name:"Pasta Carbonara", menu_discription:"Pasta a la mama", cuisine:"Italian", price: 9})
Menu.create({menu_name:"Salmon Risotto", menu_discription:"Organc salmon, with mushrooms.", cuisine: "Italian", price: 10})
Menu.create({menu_name:"Boerenkoolstampot", menu_discription:"Typical Dutch food. Mashed potatoes with kale and saucage", cuisine:"Dutch", price:8})
Menu.create({menu_name:"Couscous", menu_discription:"Couscous with lamb and olives. Come and taste Moroccon food!", cuisine:"Moroccon", price: 9})
Menu.create({menu_name:"Frice and steak", menu_discription:"Simple but verry nice: steak with frenc fries and peppersauce", cuisine:"French", price:8})
Menu.create({menu_name:"Couscous", menu_discription:"Couscous with lamb and olives. Come and taste Moroccon food!", cuisine:"Moroccon", price: 9})
