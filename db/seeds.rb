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

a3 = AstronomicalItem.create :name => "Mars", :category => "Planet", :summary => "Mars is the fourth planet from the Sun and the third largest and massive terrestrial object in the Solar System. Mars has a thin atmosphere and a crust primarily composed of elements similar to Earth's crust, as well as a core made of iron and nickel. Mars has surface features such as impact craters, valleys, dunes, and polar ice caps. Mars has two small, irregularly shaped moons, Phobos and Deimos.", :image => "https://upload.wikimedia.org/wikipedia/commons/thumb/0/0e/Tharsis_and_Valles_Marineris_-_Mars_Orbiter_Mission_%2830055660701%29.png/440px-Tharsis_and_Valles_Marineris_-_Mars_Orbiter_Mission_%2830055660701%29.png"

a4 = AstronomicalItem.create :name => "Venus", :category => "Planet", :summary => "Venus is the second planet from the Sun and the only terrestrial object in the Solar System other than Earth that has a substantial atmosphere and is almost as massive and large as Earth. Like Mercury, Venus orbits the Sun always closer than Earth, resulting in it appearing in Earth's sky always inferior (close to the Sun) and at night as either a 'morning star' or 'evening star'. Venus appears in Earth's sky also as the brightest natural object, aside from the Sun and Moon, due to its proximity to Earth and the Sun, its large size and high albedo. These prominent appearances of Venus in Earth's sky have made Venus a classical planet, a common and important object for humans, their cultures and astronomy.", :image => "https://images.theconversation.com/files/487253/original/file-20220929-25-a6bvkz.jpeg?ixlib=rb-1.1.0&q=45&auto=format&w=1200&h=1200.0&fit=crop"

a5 = AstronomicalItem.create :name => "Mercury", :category => "Gas Giant", :summary => "Mercury is the first planet from the Sun and the only one in the Solar System without a considerable atmosphere. It is the smallest terrestrial planet of the Solar System and despite being also smaller than the Solar System objects Ganymede and Titan it is massive enough to have about the same surface gravity as the even larger planet Mars. Like Venus, Mercury orbits the Sun within Earth's orbit, making it appear in Earth's sky only in inferior positions, never appearing further from the Sun than 28°, resulting in it appearing only as a 'morning star' or 'evening star', like Venus, though not as brightly. Mercury and Earth return to the same position to each other in synodic cycles of 116 days. It is named after the Roman god Mercurius (Mercury), god of commerce, messenger of the gods, and mediator between gods and mortals, corresponding to the Greek god Hermes (Ἑρμῆς)", :image => "https://upload.wikimedia.org/wikipedia/commons/thumb/4/4a/Mercury_in_true_color.jpg/440px-Mercury_in_true_color.jpg"

a6 = AstronomicalItem.create :name => "Proxima Centauri", :category => "Main Sequence Star", :summary => "Proxima Centauri is a small, low-mass star located 4.2465 light-years (1.3020 pc) away from the Sun in the southern constellation of Centaurus. Its Latin name means the 'nearest [star] of Centaurus'. It was discovered in 1915 by Robert Innes and is the nearest-known star to the Sun. With a quiescent apparent magnitude of 11.13, it is too faint to be seen with the unaided eye. Proxima Centauri is a member of the Alpha Centauri star system, being identified as component Alpha Centauri C, and is 2.18° to the southwest of the Alpha Centauri AB pair. It is currently 12,950 AU (0.2 ly) from AB, which it orbits with a period of about 550,000 years", :image => "https://upload.wikimedia.org/wikipedia/commons/9/95/New_shot_of_Proxima_Centauri%2C_our_nearest_neighbour.jpg"

a7 = AstronomicalItem.create :name => "The Sun", :category => "Main Sequence Star", :summary => "The Sun is the star at the center of the Solar System. It is a nearly perfect ball of hot plasma, heated to incandescence by nuclear fusion reactions in its core. The Sun radiates this energy mainly as light, ultraviolet, and infrared radiation, and is the most important source of energy for life on Earth. The enormous effect of the Sun on Earth has been recognized since prehistoric times. The Sun was thought of by some cultures as a deity. The synodic rotation of Earth and its orbit around the Sun are the basis of some solar calendars. The predominant calendar in use today is the Gregorian calendar which is based upon the standard 16th-century interpretation of the Sun's observed movement as actual movement.", :image => "https://d2r55xnwy6nx47.cloudfront.net/uploads/2018/07/SolarFull_SeanDoran_2880FullwidthLede.jpg"

a8 = AstronomicalItem.create :name => "Sirius", :category => "Main Sequence Star", :summary => "Sirius is the brightest star in the night sky. Its name is derived from the Greek word Σείριος, or Seirios, meaning lit. 'glowing' or 'scorching'. The star is designated α Canis Majoris, Latinized to Alpha Canis Majoris, and abbreviated α CMa or Alpha CMa. With a visual apparent magnitude of −1.46, Sirius is almost twice as bright as Canopus, the next brightest star. Sirius is a binary star consisting of a main-sequence star of spectral type A0 or A1, termed Sirius A, and a faint white dwarf companion of spectral type DA2, termed Sirius B. The distance between the two varies between 8.2 and 31.5 astronomical units as they orbit every 50 years. Sirius is colloquially known as the 'Dog Star', reflecting its prominence in its constellation, Canis Major (the Greater Dog). The heliacal rising of Sirius marked the flooding of the Nile in Ancient Egypt and the 'dog days' of summer for the ancient Greeks, while to the Polynesians, mostly in the Southern Hemisphere, the star marked winter and was an important reference for their navigation around the Pacific Ocean", :image => "https://cdn.mos.cms.futurecdn.net/uxdsce4CMFwqPDRKEKvbX4.jpeg"

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
u1.astronomical_items << a3
u2.astronomical_items << a4
u1.astronomical_items << a5
u2.astronomical_items << a6
u1.astronomical_items << a7
u2.astronomical_items << a8

a1.bookmarks << b1
u1.bookmarks << b1

a2.bookmarks << b2
u1.bookmarks << b2

a1.comments << c1
a1.comments << c2
a1.comments << c3

u1.comments << c1
u2.comments << c2
u2.comments << c3


# a2.comments << c2
# u2.comments << c2



# b1.user << u1
# b1.astronomical_item << a1

# c1.user << u1
# a1.astronomical_item << c1