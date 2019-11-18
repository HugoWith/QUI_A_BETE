# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
puts "Users destroyed"
Group.destroy_all
puts "Groups destroyed"

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

lea = User.create!(
  nickname: "belze",
  first_name: "lea",
  last_name: "bzs",
  email: "lea@lea.com",
  password: "azerty")

evan = User.create!(
  nickname: "schlarz",
  first_name: "evan",
  last_name: "wichlarz",
  email: "evan@evan.com",
  password: "azerty")

simon = User.create!(
  nickname: "geekquest",
  first_name: "simon",
  last_name: "stef",
  email: "simon@simon.com",
  password: "azerty")

joseph = User.create!(
  nickname: "jojo",
  first_name: "joseph",
  last_name: "blanchard",
  email: "jojo@jojo.com",
  password: "azerty")

kev = User.create!(
  nickname: "kevcha",
  first_name: "kevin",
  last_name: "chavanne",
  email: "kev@kev.com",
  password: "azerty")

batch = Group.create!(
  name: "Batch 308",
  user: joseph,
  user: kev
  )

love = Group.create!(
  name: "Bae <3")

frero = Group.create!(
  name: "Les frérots")

family = Group.create!(
  name: "Familia")

