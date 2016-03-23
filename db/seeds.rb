# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create!(first_name: "Example User",
             last_name: "example@railstutorial.org",
             address: "1121 N. River Rock Dr.",
             city: "Belgrade",
             state: "Montanta",
             zip: 59714,
             email: "nthnjustice@gmail.com",
             password: "password",
             password_confirmation: "password",
             admin: true)