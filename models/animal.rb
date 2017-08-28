require_relative("../db/sql_runner.rb")


class Animal

  attr_accessor(:name, :species, :ecological_status, :habitat, :first_sighting, :image)
  attr_reader(:id)

  def initialize(animal_details)
    @id = animal_details["id"].to_i if animal_details["id"]
    @name = animal_details["name"]
    @species = animal_details["species"]
    @ecological_status = animal_details["ecological_status"]
    @habitat = animal_details["habitat"]
    @first_sighting = animal_details["first_sighting"]
    @image = animal_details["image"]
  end

  def save()
    sql = "INSERT INTO animals (name, species, ecological_status, habitat, first_sighting, image)
    VALUES ($1, $2, $3, $4, $5, $6) RETURNING id;"
    values = [@name, @species, @ecological_status, @habitat, @first_sighting, @image]
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

  def Animal.delete_all()
    sql = "DELETE FROM animals;"
    SqlRunner.run(sql)
  end

  def Animal.delete_by_id(id)
    sql = "DELETE FROM animals WHERE id =$1;"
    SqlRunner.run(sql, [id])
  end

  def update()
    sql = "UPDATE animals SET (name, species, ecological_status, habitat, first_sighting, image)
      = ($1, $2, $3, $4, $5, $6) WHERE id = $7;"
    values = [@name, @species, @ecological_status, @habitat, @first_sighting, @image, @id]
    SqlRunner.run(sql, values)
  end

  def Animal.find(id)
    sql = "SELECT * FROM animals WHERE id = $1;"
    result = SqlRunner.run(sql, [id]).first
    return Animal.new(result)
  end

end
