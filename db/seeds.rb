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
  nickname: "Junior",
  first_name: "Marin",
  last_name: "Vanthier",
  email: "marin@marin.com",
  password: "azerty",
  # photo: File.open("app/assets/images/marin.jpg")
  photo: Cloudinary::CarrierWave::StoredFile.new("image/upload/v1574185422/fvlozunaiuzuoi8fphpx.jpg")
  )

hugo = User.create!(
  nickname: "Hugoxxx",
  first_name: "Hugo",
  last_name: "Valla",
  email: "hugo@hugo.com",
  password: "azerty",
  # photo: File.open("app/assets/images/hugo.jpeg")
  photo: Cloudinary::CarrierWave::StoredFile.new("image/upload/v1574185423/alpwntqhsjyfux6oazus.jpg")
)

alex = User.create!(
  nickname: "Dadalex",
  first_name: "Alex",
  last_name: "Viretti",
  email: "alex@alex.com",
  password: "azerty",
  # photo: File.open("app/assets/images/alex.jpeg")
  photo: Cloudinary::CarrierWave::StoredFile.new("image/upload/v1574185424/rq03wkinuqqedrcfgj4g.jpg")
  )

marine = User.create!(
  nickname: "MarineX3",
  first_name: "marine",
  last_name: "Diot",
  email: "marine@marine.com",
  password: "azerty",
  # photo: File.open("app/assets/images/profil2.jpg")
  photo: Cloudinary::CarrierWave::StoredFile.new("image/upload/v1574271534/jwz6hdwrozu8rjwycaam.jpg")
  )

lea = User.create!(
  nickname: "Belze",
  first_name: "lea",
  last_name: "bzs",
  email: "lea@lea.com",
  password: "azerty",
  # photo: File.open("app/assets/images/lea.png")
  photo: Cloudinary::CarrierWave::StoredFile.new("image/upload/v1574271535/lekgu29n86puqbwjbxa5.png")
  )

evan = User.create!(
  nickname: "Schlarz",
  first_name: "evan",
  last_name: "wichlarz",
  email: "evan@evan.com",
  password: "azerty",
  # photo: File.open("app/assets/images/evan2.png")
  photo: Cloudinary::CarrierWave::StoredFile.new("image/upload/v1574930440/morae2hvixxjbefvw4so.png")
  )

simon = User.create!(
  nickname: "Geekquest",
  first_name: "simon",
  last_name: "stef",
  email: "simon@simon.com",
  password: "azerty",
  # photo: File.open("app/assets/images/simon.png")
  photo: Cloudinary::CarrierWave::StoredFile.new("image/upload/v1574271537/y3if8gcvatlmtgsmyp1y.png")
  )

jojo = User.create!(
  nickname: "Jojo",
  first_name: "joseph",
  last_name: "blanchard",
  email: "jojo@jojo.com",
  password: "azerty",
  # photo: File.open("app/assets/images/jojo.jpg")
  photo: Cloudinary::CarrierWave::StoredFile.new("image/upload/v1574185425/az1uuiwvuothal4ewmps.jpg")
  )

kev = User.create!(
  nickname: "Kevcha",
  first_name: "kevin",
  last_name: "chavanne",
  email: "kev@kev.com",
  password: "azerty",
  # photo: File.open("app/assets/images/kevin.jpeg")
  photo: Cloudinary::CarrierWave::StoredFile.new("image/upload/v1574185427/dbid7sn4vajnxb0sjjuz.jpg")
)

john = User.create!(
  nickname: "La frite",
  first_name: "john",
  last_name: "jomard",
  email: "john@john.com",
  password: "azerty",
  # photo: File.open("app/assets/images/john.jpeg"),
  photo: Cloudinary::CarrierWave::StoredFile.new("image/upload/v1574271538/ln4p2snia2t1bd5czjfa.jpg")
  )

haris = User.create!(
  nickname: "Pain moelleux",
  first_name: "haris",
  last_name: "haris",
  email: "haris@haris.com",
  password: "azerty")


axel = User.create!(
  nickname: "Arthur",
  first_name: "axel",
  last_name: "axel",
  email: "axel@axel.com",
  password: "azerty",
  # photo: File.open("app/assets/images/axel.jpeg"),
  photo: Cloudinary::CarrierWave::StoredFile.new("image/upload/v1574271539/vzrhcflzxkwfutvb6qau.jpg")
  )



 batch = Group.create!(
  name: "Batch 308",
  # remote_photo_url: "https://images.unsplash.com/photo-1551623063-6adb5b1f487f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1351&q=80"
  photo: "fire.png"
  )

love = Group.create!(

  name: "Bae <3",
  # photo: Cloudinary::CarrierWave::StoredFile.new("image/upload/v1574169462/bwjwejd6nfzlgcf18gwx.jpg")
  photo: "peach.png"
  # remote_photo_url: "https://images.unsplash.com/photo-1540888747681-44f58059d761?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=564&q=80"
  )


frero = Group.create!(
  name: "Les frérots",
  # photo: Cloudinary::CarrierWave::StoredFile.new("image/upload/v1574169463/plmnr0ggiptso2qchuwc.jpg")
  # remote_photo_url: "https://images.unsplash.com/photo-1500499284653-0db5113b0388?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"
  photo: "beer.png"
  )

family = Group.create!(
  name: "Familia",
  # photo: Cloudinary::CarrierWave::StoredFile.new("image/upload/v1574169464/j51givq2opupaz7jfkkx.jpg")
  photo: "frog.png"
  # remote_photo_url: "https://images.unsplash.com/photo-1511895426328-dc8714191300?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80"
  )

ug1 = Usergroup.create!(
  user: marin,
  group: batch,
  score: 10)

ug2 = Usergroup.create!(
  user: hugo,
  group: batch,
  is_owner: false,
  score: 70)

ug3 = Usergroup.create!(
  user: alex,
  group: batch,
  is_owner: true,
  score: 40)

ug4 = Usergroup.create!(
  user: marine,
  group: batch,
  score: 60)

ug5 = Usergroup.create!(
  user: lea,
  group: batch)

ug6 = Usergroup.create!(
  user: simon,
  group: batch,
  score: 50)

ugx = Usergroup.create!(
  user: evan,
  group: batch,
  is_owner: false,
  score: 5)

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
  group: frero,
  is_owner: true)

ug11 = Usergroup.create!(
  user: john,
  group: family)

ug12 = Usergroup.create!(
  user: haris,
  group: family)

ug13 = Usergroup.create!(
  user: marin,
  group: family)

ug13 = Usergroup.create!(
  user: axel,
  group: batch)

ug14= Usergroup.create!(
  user: evan,
  group: family,
  is_owner: false)

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

bet3 = Bet.create!(
  description:"Axel ne demandera pas d'aide pendant une journée",
  end_date: Date.new(2019,12,15),
  creator_id: hugo.id,
  beter_id: alex.id,
  group_id: batch.id,
  target_id: axel.id,
  stake: "3 mois d'abonnement Netflix",
  difficulty: 6
)

bet4 = Bet.create!(
  description:"Evan sera super poli pendant 24 heures",
  end_date: Date.new(2019,12,15),
  creator_id: lea.id,
  beter_id: marine.id,
  group_id: batch.id,
  stake: "une pizza",
  difficulty: 2
)

bet5 = Bet.create!(
  description:"Le garçon d'Alex va naitre le 6 décembre",
  end_date: Date.new(2019,12,06),
  creator_id: evan.id,
  beter_id: alex.id,
  group_id: batch.id,
  stake: "une chouffe 🍺",
  difficulty: 1,
  over: true
)

bet6 = Bet.create!(
  description:"Le garçon d'Alex va naitre le 6 décembre",
  end_date: Date.new(2019,12,06),
  creator_id: evan.id,
  beter_id: alex.id,
  group_id: frero.id,
  stake: "une chouffe 🍺",
  difficulty: 1,
  over: false
)

bet7 = Bet.create!(
  description:"John ne fera pas tomber de plante en jouant au ping-pong",
  end_date: Date.new(2019,12,12),
  creator_id: lea.id,
  beter_id: axel.id,
  group_id: batch.id,
  stake: "une chouffe 🍺",
  difficulty: 1,
  over: false
)

bet8 = Bet.create!(
  description:"John refera tomber le tableau",
  end_date: Date.new(2019,12,10),
  creator_id: marin.id,
  beter_id: john.id,
  group_id: family.id,
  stake: "une pinte",
  difficulty: 3,
  over: false
)

bet9 = Bet.create!(
  description:"Marin gagnera 5-0 à FIFA",
  end_date: Date.new(2019,12,14),
  creator_id: marin.id,
  beter_id: john.id,
  group_id: family.id,
  stake: "un café suspendu",
  difficulty: 3,
  over: false
)

bet10 = Bet.create!(
  description:"Marin viendra un jour sans bonnet",
  end_date: Date.new(2019,12,11),
  creator_id: evan.id,
  beter_id: john.id,
  group_id: family.id,
  stake: "un café suspendu",
  target_id: marin.id,
  difficulty: 3,
  over: false
)
