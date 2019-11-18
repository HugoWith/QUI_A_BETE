# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

marin = User.create!(
  nickname: "jr",
  first_name: "Marin",
  last_name: "Vanthier",
  email: "marin@marin.com",
  password: "azerty")

hugo = User.create!(
  nickname: "hugoxxx",
  first_name: "Hugo",
  last_name: "Valla",
  email: "hugo@hugo.com",
  password: "azerty")

alex = User.create!(
  nickname: "dadalex",
  first_name: "Alex",
  last_name: "Viretti",
  email: "alex@alex.com",
  password: "azerty")

marine = User.create!(
  nickname: "marineX3",
  first_name: "marine",
  last_name: "Diot",
  email: "marine@marine.com",
  password: "azerty")
