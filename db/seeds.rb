require("pry-byebug")
require_relative("../models/member.rb")
require_relative("../models/sponsorship.rb")
require_relative("../models/animal.rb")

Member.delete_all()
Animal.delete_all()
Sponsorship.delete_all()


member1 = Member.new({ "name" => "Ben" })
member2 = Member.new({ "name" => "Tiffany" })
member3 = Member.new({ "name" => "Sharon" })

member1.save()
member2.save()
member3.save()


animal1 = Animal.new({
  "name" => "Terry",
  "species" => "Thorny Devil",
  "ecological_status" => "conservation dependant",
  "habitat" => "spinifex scrubland"
  })
animal1.save()

animal2 = Animal.new({
  "name" => "Barry",
  "species" => "Greater Bilby",
  "ecological_status" => "endangered",
  "habitat" => "semi-arid shrubland"
  })

animal2.save()

animal3 = Animal.new({
  "name" => "Ronny",
  "species" => "Red Tailed Black Cockatoo",
  "ecological_status" => "near threatened",
  "habitat" => "eucalypt woodlands"
  })

animal3.save()

s_ship1 = Sponsorship.new({
  "animal_id" => animal1.id,
  "member_id" => member1.id,
  "value" => 500,
  "date_sponsored" => "April 18 2017"
  })

s_ship2 = Sponsorship.new({
  "animal_id" => animal2.id,
  "member_id" => member2.id,
  "value" => 5000,
  "date_sponsored" => "2016-01-12"
  })

  s_ship3 = Sponsorship.new({
    "animal_id" => animal3.id,
    "member_id" => member1.id,
    "value" => 1250,
    "date_sponsored" => "2015-07-18"
    })

s_ship1.save()
s_ship2.save()
s_ship3.save()

binding.pry
nil
