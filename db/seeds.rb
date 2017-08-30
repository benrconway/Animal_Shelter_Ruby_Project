require("pry-byebug")
require_relative("../models/member.rb")
require_relative("../models/sponsorship.rb")
require_relative("../models/animal.rb")

Member.delete_all()
Animal.delete_all()
Sponsorship.delete_all()


member1 = Member.new({
  "name" => "Ben",
  "picture" => "https://us.123rf.com/450wm/warrengoldswain/warrengoldswain1411/warrengoldswain141100110/33791129-fashionable-african-hipster-man-portrait-leaning-against-distressed-urban-wall-background.jpg?ver=6"
   })

member1.save()

member2 = Member.new({
  "name" => "Tiffany",
  "picture" => "https://s3-eu-west-1.amazonaws.com/pcs01.photocase.com/l/lp7zisbf/2zcf6egc/photocase2zcf6egc3.jpg?1450857360"
   })

member2.save()

member3 = Member.new({
  "name" => "Sharon",
  "picture" => "https://static.pexels.com/photos/38554/girl-people-landscape-sun-38554.jpeg"
   })

member3.save()

member4 = Member.new({
  "name" => "Ryan",
  "picture" => "http://blog.timesunion.com/eastgreenbush/files/2010/07/sbn-fonzie2.jpg"
  })
member4.save()

member5 =  Member.new({
  "name" => "Giuseppe",
  "picture" => "https://thumbs.dreamstime.com/z/italian-chef-4995744.jpg"
  })
member5.save()

animal1 = Animal.new({
  "name" => "Terry",
  "species" => "Thorny Devil",
  "ecological_status" => "conservation dependant",
  "habitat" => "spinifex scrubland",
  "first_sighting" => "2005-06-22",
  "image" => "http://www.factzoo.com/sites/all/img/reptiles/lizards/thorny/upclose-thorny-moloch-devil.jpg"
  })
animal1.save()

animal2 = Animal.new({
  "name" => "Barrietta",
  "species" => "Greater Bilby",
  "ecological_status" => "endangered",
  "habitat" => "semi-arid shrubland",
  "first_sighting" => "2005-06-22",
  "image" => "http://www.australianwildlife.org/media/66801/greater-bilby_wlawler_sml.jpg"
  })

animal2.save()

animal3 = Animal.new({
  "name" => "Ronny",
  "species" => "Red-Tailed Black Cockatoo",
  "ecological_status" => "near threatened",
  "habitat" => "eucalypt woodlands",
  "first_sighting" => "2005-06-22",
  "image" => "https://i.pinimg.com/736x/62/78/38/627838e3842d4de784415e62a9721c59--large-black-the-black.jpg"
  })

animal3.save()

animal4 = Animal.new({
  "name" => "Marvin",
  "species" => "Red Kangaroo",
  "ecological_status" => "stable",
  "habitat" => "mulga plains",
  "first_sighting" => "2005-06-22",
  "image" => "http://i.dailymail.co.uk/i/pix/2015/06/04/04/2956878200000578-3110240-image-a-77_1433387519005.jpg"
  })

  animal4.save()

  animal5 = Animal.new({
    "name" => "Scarabonster",
    "species" => "Marsupial Lion",
    "ecological_status" => "critically endangered",
    "habitat" => "tropical oases",
    "first_sighting" => "2014-03-15",
    "image" => "https://media-cache-ec0.pinimg.com/736x/33/c4/35/33c435409a8e4ace80a821ffeb3cf68b.jpg"
    })

  animal5.save()

  animal6 = Animal.new({
    "name" => "Perentie",
    "species" => "Monitor Lizard",
    "ecological_status" => "near threaened",
    "habitat" => "central and western deserts",
    "first_sighting" => "2000-02-15",
    "image" => "https://c2.staticflickr.com/2/1349/5128641178_4bb7afd39a_z.jpg"
    })

  animal6.save()

  animal7 = Animal.new({
    "name" => "Erin",
    "species" => "Wedge-Tailed Eagle",
    "ecological_status" => "stable",
    "habitat" => "mulga plains",
    "first_sighting" => "2010-08-23",
    "image" => "https://ih1.redbubble.net/image.4181890.9542/flat,1000x1000,075,f.jpg"
    })

  animal7.save()



s_ship1 = Sponsorship.new({
  "animal_id" => animal1.id,
  "member_id" => member3.id,
  "value" => 500,
  "date_sponsored" => "April 18 2017"
  })

s_ship1.save()

s_ship2 = Sponsorship.new({
  "animal_id" => animal2.id,
  "member_id" => member2.id,
  "value" => 5000,
  "date_sponsored" => "2016-01-12"
  })

s_ship2.save()

s_ship3 = Sponsorship.new({
    "animal_id" => animal3.id,
    "member_id" => member1.id,
    "value" => 1250,
    "date_sponsored" => "2015-07-18"
    })

s_ship3.save()

s_ship4 = Sponsorship.new({
  "animal_id" => animal2.id,
  "member_id" => member4.id,
  "value" => 15,
  "date_sponsored" => "2017-08-28"
  })

s_ship4.save()
