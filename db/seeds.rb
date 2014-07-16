# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


User.destroy_all
Meme.destroy_all

User.create email: "ayaz@example.com", password: "ayazayaz", password_confirmation: "ayazayaz"
User.create email: "sean@example.com", password: "seansean", password_confirmation: "seansean"
User.create email: "eric@example.com", password: "ericeric", password_confirmation: "ericeric"
