require("pry-byebug")
require_relative("../models/member.rb")
require_relative("../models/sponsorship.rb")
require_relative("../models/animal.rb")

member1 = Member.new({ "name" => "John" })
member2 = Member.new({ "name" => "Tiffany" })
member1.save()
member2.save()

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

binding.pry
nil
