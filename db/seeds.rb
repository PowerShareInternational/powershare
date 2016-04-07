# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

##### Communities #####

Community.create!(
	name: "Medford, Massachusetts")

##### Users #####

User.create!(
	first_name: "Nathan",
	middle_name: "Val",
	last_name: "Justice",
	address: "1121 N. River Rock Dr.",
	zip: 59714,
	email: "nathanjustice@gmail.com",
	password: "password",
	password_confirmation: "password",
	admin: true,
	active: true,
	community_id: 1)

User.create!(
	first_name: "Bob",
	middle_name: "Smith",
	last_name: "Ross",
	address: "1100 Elm st",
	zip: 02155,
	email: "bobross@gmail.com",
	password: "password",
	password_confirmation: "password",
	admin: false,
	active: true,
	community_id: 1)

User.create!(
	first_name: "Jane",
	middle_name: "Doe",
	last_name: "Smith",
	address: "1100 Little Brook st.",
	zip: 02654,
	email: "janesmith@gmail.com",
	password: "password",
	password_confirmation: "password",
	official: true,
	title: "Councillor",
	admin: false,
	active: true,
	community_id: 1)

##### Goals #####

Micropost.create!(
	content: "Medford High School should be ranked 60th in MA by US News",
	description: "Medford High School should be improved",
	measurement: "60th by US News",
	achieved_by: Date.new(2016, 12, 25),
	votes: 107,
	achieved: true,
	approved: true,
	responses: ["Councillor Jane Smith writes: I think this is a really good goal, and something we should be prioritizing."],
	user_id: 1,
	community_id: 1)