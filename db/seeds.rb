# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Community.create!(
	name: "Medford, Massachusetts, United States")

Community.create!(
	name: "Somerville, Massachusetts, United States")

User.create!(
	first_name: "Nathan",
	middle_name: "Val",
	last_name: "Justice",
	address: "1121 N. River Rock Dr.",
	zip: 59714,
	email: "nthnjustice@gmail.com",
	password: "password",
	password_confirmation: "password",
	admin: true,
	active: true,
	community_id: 1)

User.create!(
	first_name: "Bob",
	middle_name: "Mega",
	last_name: "Ross",
	address: "Aidekman Arts Center",
	zip: 02155,
	email: "bobross@gmail.com",
	password: "password",
	password_confirmation: "password",
	admin: false,
	active: false,
	community_id: 1)

User.create!(
	first_name: "Adam",
	middle_name: "Jon",
	last_name: "Smith",
	address: "1100 Elm st.",
	zip: 02654,
	email: "adamsmith@gmail.com",
	password: "password",
	password_confirmation: "password",
	admin: false,
	active: false,
	community_id: 1)

User.create!(
	first_name: "Rachel",
	middle_name: "Doe",
	last_name: "Adams",
	address: "1100 Elm st.",
	zip: 02654,
	email: "racheldoe@gmail.com",
	password: "password",
	password_confirmation: "password",
	admin: false,
	active: false,
	community_id: 1)

Micropost.create!(
	content: "Micropost content",
	description: "Micropost description",
	measurement: "micropost measurement",
	achieved_by: Date.today,
	votes: 5,
	achieved: false,
	approved: true,
	responses: ["first response", "second response"],
	user_id: 1,
	community_id: 1)

User.create!(
	first_name: "Nathan",
	middle_name: "Val",
	last_name: "Justice",
	address: "1121 N. River Rock Dr.",
	zip: 59714,
	email: "n.justice@outlook.com",
	password: "password",
	password_confirmation: "password",
	admin: true,
	active: true,
	community_id: 2)

Micropost.create!(
	content: "Micropost content2",
	description: "Micropost description2",
	measurement: "micropost measurement2",
	achieved_by: Date.today,
	votes: 5,
	achieved: false,
	approved: true,
	responses: ["first response2", "second response2"],
	user_id: 5,
	community_id: 2)