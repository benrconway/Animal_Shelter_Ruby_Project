require_relative("../db/sql_runner.rb")


class Animal

  attr_accessor(:name, :species, :ecological_status, :habitat)
  attr_reader(:id)

  def initialize(animal_details)
    @id = animal_details["id"].to_i if animal_details["id"]
    @name = animal_details["name"]
    @species = animal_details["species"]
    @ecological_status = animal_details["ecological_status"]
    @habitat = animal_details["habitat"]
  end



end
