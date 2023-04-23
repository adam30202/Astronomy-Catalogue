# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

AstronomicalItem.destroy_all

a1 = AstronomicalItem.create :name => "Saturn", :category => "Gas Giant", :summary => "Saturn is the sixth planet from the Sun and the second-largest in the Solar System, after Jupiter. It is a gas giant with an average radius of about nine and a half times that of Earth. It has only one-eighth the average density of Earth, but is over 95 times more massive.", :image => "https://upload.wikimedia.org/wikipedia/commons/thumb/c/c7/Saturn_during_Equinox.jpg/1920px-Saturn_during_Equinox.jpg"

a2 = AstronomicalItem.create :name => "International Space Station", :category => "Human Made", :summary => "The International Space Station (ISS) is the largest modular space station in low Earth orbit. The project involves five space agencies: the United States' NASA, Russia's Roscosmos, Japan's JAXA, Europe's ESA, and Canada's CSA. The ownership and use of the space station is established by intergovernmental treaties and agreements. The station serves as a microgravity and space environment research laboratory in which scientific research is conducted in astrobiology, astronomy, meteorology, physics, and other fields. The ISS is suited for testing the spacecraft systems and equipment required for possible future long-duration missions to the Moon and Mars.", :image => "https://upload.wikimedia.org/wikipedia/commons/thumb/e/e1/The_station_pictured_from_the_SpaceX_Crew_Dragon_5_%28cropped%29.jpg/2880px-The_station_pictured_from_the_SpaceX_Crew_Dragon_5_%28cropped%29.jpg"

puts "#{AstronomicalItem.count} Astronomical Items added"

User.destroy_all

u1 = User.create :name => "Adam", :email => "adam.shuvalov@gmail.com", :password => "chicken"
u2 = User.create :name => "Boris", :email => "boris@gmail.com", :password => "chicken"

puts "#{User.count} Users added"

Bookmark.destroy_all

b1 = Bookmark.create
b2 = Bookmark.create

puts "#{Bookmark.count} Bookmarks added"

Comment.destroy_all

c1 = Comment.create :content => "This is so cool!"
c2 = Comment.create :content => "I don't like this post!"
c3 = Comment.create :content => "WOW!"
c4 = Comment.create :content => "Neat!"
c5 = Comment.create :content => "ok?"
c6 = Comment.create :content => "Not the best"

puts "#{Comment.count} Comments added"

# ASSOCIATIONS

u1.astronomical_items << a1
u2.astronomical_items << a2

a1.bookmarks << b1
u1.bookmarks << b1

a2.bookmarks << b2
u1.bookmarks << b2

a1.comments << c1
a1.comments << c2
a1.comments << c3

u1.comments << c1
u1.comments << c2
u1.comments << c3


# a2.comments << c2
# u2.comments << c2



# b1.user << u1
# b1.astronomical_item << a1

# c1.user << u1
# a1.astronomical_item << c1