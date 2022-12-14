# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "open-uri"
puts "Cleaning..."
Planet.destroy_all
User.destroy_all
puts "creating users..."

user1 = User.create!(first_name: "Paulo", last_name: "Gomes", email: "pjgomes85@hotmail.com", password: "Test123")
user2 = User.create!(first_name: "Theo", last_name: "P.", email: "kmstheodore@gmail.com", password: "Test123")
user3 = User.create!(first_name: "Olivia", last_name: "S.", email: "oliviapatterson123@live.com", password: "Test123")
user4 = User.create!(first_name: "jay", last_name: "P.", email: "piette.jc@me.com", password: "Test123")
user5 = User.create!(first_name: "peter", last_name: "P.", email: "e.jc@me.com", password: "Test123")
user6 = User.create!(first_name: "jonh", last_name: "P.", email: "pie.jc@me.com", password: "Test123")
user7 = User.create!(first_name: "i", last_name: "P.", email: "pe.jc@me.com", password: "Test123")
user8 = User.create!(first_name: "x", last_name: "P.", email: "dfdtte.jc@me.com", password: "Test123")
user9 = User.create!(first_name: "p", last_name: "P.", email: "piesdtte.jc@me.com", password: "Test123")
user10 = User.create!(first_name: "al", last_name: "P.", email: "aasd.jc@me.com", password: "Test123")

puts "users created!"

puts "creating planet..."

planet1 = Planet.create!(
  user: user1,
  name: "Uranus",
  price: 750,
  desc: "Uranus is made of water, methane, and ammonia fluids above a small rocky center. Its atmosphere is made of hydrogen and helium like Jupiter and Saturn, but it also has methane. The methane makes Uranus blue. Uranus also has faint rings.",
  image: "https://res.cloudinary.com/do31e5zv5/image/upload/w_1000,c_fill,ar_1:1,g_auto,r_max,b_rgb:262c35/v1661939393/rbzvonfl6kcpwpuag7xy.jpg"
)

file = URI.open("https://res.cloudinary.com/do31e5zv5/image/upload/w_1000,c_fill,ar_1:1,g_auto,r_max,b_rgb:262c35/v1661939393/rbzvonfl6kcpwpuag7xy.jpg")
planet1.photo.attach(io: file, filename: "nes.png", content_type: "image/png")



planet2 = Planet.create!(
  user: user2,
  name: "Earth",
  price: 0.01,
  desc: "Our home planet Earth is a rocky, terrestrial planet. It has a solid and active surface with mountains, valleys, canyons, plains and so much more. Earth is special because it is an ocean planet. Water covers 70% of Earth's surface.",
  image: "https://res.cloudinary.com/do31e5zv5/image/upload/w_1000,c_fill,ar_1:1,g_auto,r_max,b_rgb:262c35/v1661866647/az3y4t264gk34bbytpni.jpg"
)

file = URI.open("https://res.cloudinary.com/do31e5zv5/image/upload/w_1000,c_fill,ar_1:1,g_auto,r_max,b_rgb:262c35/v1661866647/az3y4t264gk34bbytpni.jpg")
planet2.photo.attach(io: file, filename: "nes.png", content_type: "image/png")







planet3 = Planet.create!(
  user: user3,
  name: "Saturn",
  price: 1000,
  desc: "Saturn is the sixth planet from the Sun and the second-largest in the Solar System, after Jupiter. It is a gas giant with an average radius of about nine and a half times that of Earth. It has only one-eighth the average density of Earth; however, with its larger volume, Saturn is over 95 times more massive.",
  image: "https://res.cloudinary.com/do31e5zv5/image/upload/w_1000,c_fill,ar_1:1,g_auto,r_max,b_rgb:262c35/v1661867998/zkthm6cbtvzaianuwup7.jpg"
)

file = URI.open("https://res.cloudinary.com/do31e5zv5/image/upload/w_1000,c_fill,ar_1:1,g_auto,r_max,b_rgb:262c35/v1661867998/zkthm6cbtvzaianuwup7.jpg")
planet3.photo.attach(io: file, filename: "nes.png", content_type: "image/png")





planet4 = Planet.create!(
  user: user4,
  name: "Jupiter",
  price: 500,
  desc: "Jupiter is covered in swirling cloud stripes. It has big storms like the Great Red Spot, which has been going for hundreds of years. Jupiter is a gas giant and doesn't have a solid surface, but it may have a solid inner core about the size of Earth. Jupiter also has rings, but they're too faint to see very well.",
  image: "https://res.cloudinary.com/do31e5zv5/image/upload/w_1000,c_fill,ar_1:1,g_auto,r_max,b_rgb:262c35/v1661868167/b4ffalqu559lb66n2itb.jpg"
)

file = URI.open("https://res.cloudinary.com/do31e5zv5/image/upload/w_1000,c_fill,ar_1:1,g_auto,r_max,b_rgb:262c35/v1661868167/b4ffalqu559lb66n2itb.jpg")
planet4.photo.attach(io: file, filename: "nes.png", content_type: "image/png")






planet5 = Planet.create!(
  user: user5,
  name: "Mercury",
  price: 150,
  desc: "It has a solid surface that is covered with craters like our Moon. It has a thin atmosphere, and it doesn't have any moons. Mercury likes to keep things simple. Mercury spins slowly compared to Earth, so one day lasts a long time. Mercury takes 59 Earth days to make one full rotation.",
  image: "https://res.cloudinary.com/do31e5zv5/image/upload/w_1000,c_fill,ar_1:1,g_auto,r_max,b_rgb:262c35/v1661940232/popg9rvdj3oroq8pyame.jpg"
)

file = URI.open("https://res.cloudinary.com/do31e5zv5/image/upload/w_1000,c_fill,ar_1:1,g_auto,r_max,b_rgb:262c35/v1661940232/popg9rvdj3oroq8pyame.jpg")
planet5.photo.attach(io: file, filename: "nes.png", content_type: "image/png")



planet6 = Planet.create!(
  user: user6,
  name: "Mars",
  price: 50,
  desc: "Mars is sometimes called the Red Planet. It's red because of rusty iron in the ground. Like Earth, Mars has seasons, polar ice caps, volcanoes, canyons, and weather. It has a very thin atmosphere made of carbon dioxide, nitrogen, and argon.",
  image: "https://res.cloudinary.com/do31e5zv5/image/upload/w_1000,c_fill,ar_1:1,g_auto,r_max,b_rgb:262c35/v1661940350/c4vht2qwvmowkemsjvqo.jpg"
)

file = URI.open("https://res.cloudinary.com/do31e5zv5/image/upload/w_1000,c_fill,ar_1:1,g_auto,r_max,b_rgb:262c35/v1661940350/c4vht2qwvmowkemsjvqo.jpg")
planet6.photo.attach(io: file, filename: "nes.png", content_type: "image/png")







planet7 = Planet.create!(
  user: user7,
  name: "Venus",
  price: 570,
  desc: "Venus is the second planet from the Sun, and is Earth's closest neighbor in the solar system. Venus is the brightest object in the sky after the Sun and the Moon, and sometimes looks like a bright star in the morning or evening sky. The planet is a little smaller than Earth, and is similar to Earth inside",
  image: "https://res.cloudinary.com/do31e5zv5/image/upload/w_1000,c_fill,ar_1:1,g_auto,r_max,b_rgb:262c35/v1661941347/jg8dgrgcenxgxro58au8.jpg"
)

file = URI.open("https://res.cloudinary.com/do31e5zv5/image/upload/w_1000,c_fill,ar_1:1,g_auto,r_max,b_rgb:262c35/v1661941347/jg8dgrgcenxgxro58au8.jpg")
planet7.photo.attach(io: file, filename: "nes.png", content_type: "image/png")






planet8 = Planet.create!(
  user: user8,
  name: "Neptune",
  price: 1500,
  desc: "Neptune, like Uranus, is an ice giant. It's similar to a gas giant. It is made of a thick soup of water, ammonia, and methane flowing over a solid core about the size of Earth. Neptune has a thick, windy atmosphere.",
  image: "https://res.cloudinary.com/do31e5zv5/image/upload/w_1000,c_fill,ar_1:1,g_auto,r_max,b_rgb:262c35/v1661940829/dd6vhbjoox8qxyfjrrhg.jpg"
)

file = URI.open("https://res.cloudinary.com/do31e5zv5/image/upload/w_1000,c_fill,ar_1:1,g_auto,r_max,b_rgb:262c35/v1661940829/dd6vhbjoox8qxyfjrrhg.jpg")
planet8.photo.attach(io: file, filename: "nes.png", content_type: "image/png")






planet9 = Planet.create!(
  user: user9,
  name: "Sun",
  price: 0,
  desc: "Our Sun is a 4.5 billion-year-old star, a hot glowing ball of hydrogen and helium at the center of our solar system. The Sun is about 93 million miles (150 million kilometers) from Earth, and without its energy, life as we know it could not exist here on our home planet.",
  image: "https://res.cloudinary.com/do31e5zv5/image/upload/w_1000,c_fill,ar_1:1,g_auto,r_max,b_rgb:262c35/v1661940950/xm6pw9docfq9jdgrhcmj.jpg"
)

file = URI.open("https://res.cloudinary.com/do31e5zv5/image/upload/w_1000,c_fill,ar_1:1,g_auto,r_max,b_rgb:262c35/v1661940950/xm6pw9docfq9jdgrhcmj.jpg")
planet9.photo.attach(io: file, filename: "nes.png", content_type: "image/png")




planet10 = Planet.create!(
  user: user10,
  name: "Pluto",
  price: 0.50,
  desc: "Pluto is a dwarf planet that lies in the Kuiper Belt, an area full of icy bodies and other dwarf planets out past Neptune. Pluto is very small, only about half the width of the United States and its biggest moon Charon is about half the size of Pluto.",
  image: "https://res.cloudinary.com/do31e5zv5/image/upload/w_1000,c_fill,ar_1:1,g_auto,r_max,b_rgb:262c35/v1661941221/ncpqfz9gevvwymr8nft2.jpg"
)

file = URI.open("https://res.cloudinary.com/do31e5zv5/image/upload/w_1000,c_fill,ar_1:1,g_auto,r_max,b_rgb:262c35/v1661941221/ncpqfz9gevvwymr8nft2.jpg")
planet10.photo.attach(io: file, filename: "nes.png", content_type: "image/png")

puts "planets created!"
