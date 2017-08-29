require("minitest/autorun")
require("minitest/rg")
require_relative("../models/animal.rb")
require_relative("../models/member.rb")
require_relative("../models/sponsorship.rb")

class ConservationTest < Minitest::Test

  def setup
    @member1 = Member.new({
      "name" => "Ben",
      "picture" => "https://us.123rf.com/450wm/warrengoldswain/warrengoldswain1411/warrengoldswain141100110/33791129-fashionable-african-hipster-man-portrait-leaning-against-distressed-urban-wall-background.jpg?ver=6" })

    @member2 = Member.new({
      "name" => "Tiffany",
      "picture" => "https://s3-eu-west-1.amazonaws.com/pcs01.photocase.com/l/lp7zisbf/2zcf6egc/photocase2zcf6egc3.jpg?1450857360"
       })

    @member3 = Member.new({
      "name" => "Sharon",
      "picture" => "https://static.pexels.com/photos/38554/girl-people-landscape-sun-38554.jpeg"
       })

    @animal1 = Animal.new({
      "name" => "Terry",
      "species" => "Thorny Devil",
      "ecological_status" => "conservation dependant",
      "habitat" => "spinifex scrubland",
      "first_sighting" => "2005-06-22",
      "image" => "http://www.factzoo.com/sites/all/img/reptiles/lizards/thorny/upclose-thorny-moloch-devil.jpg"
      })


    @animal2 = Animal.new({
      "name" => "Barry",
      "species" => "Greater Bilby",
      "ecological_status" => "endangered",
      "habitat" => "semi-arid shrubland",
      "first_sighting" => "2005-06-22",
      "image" => "http://www.australianwildlife.org/media/66801/greater-bilby_wlawler_sml.jpg"
      })

    @animal3 = Animal.new({
      "name" => "Ronny",
      "species" => "Red-Tailed Black Cockatoo",
      "ecological_status" => "near threatened",
      "habitat" => "eucalypt woodlands",
      "first_sighting" => "2005-06-22",
      "image" => "https://i.pinimg.com/736x/62/78/38/627838e3842d4de784415e62a9721c59--large-black-the-black.jpg"
      })

    @animal4 = Animal.new({
      "name" => "Marvin",
      "species" => "Red Kangaroo",
      "ecological_status" => "stable",
      "habitat" => "mulga plains",
      "first_sighting" => "2005-06-22",
      "image" => "http://i.dailymail.co.uk/i/pix/2015/06/04/04/2956878200000578-3110240-image-a-77_1433387519005.jpg"
      })

    @s_ship1 = Sponsorship.new({
      "animal_id" => animal1.id,
      "member_id" => member1.id,
      "value" => 500,
      "date_sponsored" => "April 18 2017"
      })

    @s_ship2 = Sponsorship.new({
      "animal_id" => animal2.id,
      "member_id" => member2.id,
      "value" => 5000,
      "date_sponsored" => "2016-01-12"
      })

    @s_ship3 = Sponsorship.new({
        "animal_id" => animal3.id,
        "member_id" => member1.id,
        "value" => 1250,
        "date_sponsored" => "2015-07-18"
        })
  end


end
