# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Usergroup.destroy_all
puts "usergroups destroyed"
Bet.destroy_all
puts "bets destroyed"
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

jojo = User.create!(
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

john = User.create!(
  nickname: "la frite",
  first_name: "john",
  last_name: "jomard",
  email: "john@john.com",
  password: "azerty")

haris = User.create!(
  nickname: "pain moelleux",
  first_name: "haris",
  last_name: "haris",
  email: "haris@haris.com",
  password: "azerty")

batch = Group.create!(
  name: "Batch 308")

love = Group.create!(
  name: "Bae <3")

frero = Group.create!(
  name: "Les frérots")

family = Group.create!(
  name: "Familia")

ug1 = Usergroup.create!(
  user: marin,
  group: batch)

ug2 = Usergroup.create!(
  user: hugo,
  group: batch)

ug3 = Usergroup.create!(
  user: alex,
  group: batch)

ug4 = Usergroup.create!(
  user: marine,
  group: batch)

ug5 = Usergroup.create!(
  user: lea,
  group: batch)

ug6 = Usergroup.create!(
  user: simon,
  group: batch)

ugx = Usergroup.create!(
  user: evan,
  group: batch)

ug7 = Usergroup.create!(
  user: jojo,
  group: love)

ug8 = Usergroup.create!(
  user: kev,
  group: love)

ug9 = Usergroup.create!(
  user: alex,
  group: frero)

ug10 = Usergroup.create!(
  user: evan,
  group: frero)

ug11 = Usergroup.create!(
  user: john,
  group: family)

ug12 = Usergroup.create!(
  user: haris,
  group: family)

ug13 = Usergroup.create!(
  user: marin,
  group: family)

bet = Bet.create!(
  description:"John va perdre 4-0 à Fifa",
  end_date: Date.new(2019,12,15),
  creator_id: marin.id,
  beter_id: john.id,
  group_id: family.id,
  stake: "une pinte",
  difficulty: 3,
  target_id: john.id
)

bet2 = Bet.create!(
  description:"Le batch 308 élira Toto comme meilleur prof",
  end_date: Date.new(2019,12,15),
  creator_id: jojo.id,
  beter_id: kev.id,
  group_id: love.id,
  stake: "une pinte",
  difficulty: 3
)
