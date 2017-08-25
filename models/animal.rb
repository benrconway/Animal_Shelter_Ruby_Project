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

  def save()
    sql = "INSERT INTO animals (name, species, ecological_status, habitat)
    VALUES ($1, $2, $3, $4) RETURNING id;"
    values = [@name, @species, @ecological_status, @habitat]
    result = SqlRunner.run(sql, values)
    @id = result[0]["id"].to_i
  end

  def Animal.all()
    sql = "SELECT * FROM animals;"
    result = SqlRunner.run(sql)
    return Animal.map_items(result)
  end

  def Animal.map_items(animal_hash)
    return animal_hash.map() {|animal_info| Animal.new(animal_info)}
  end

end
