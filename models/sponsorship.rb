require_relative("../db/sql_runner.rb")


class Sponsorship

  attr_accessor(:animal_id, :member_id, :value, :date_sponsored)
  attr_reader(:id)

  def initialize(sponsorship_details)
    @id = sponsorship_details["id"] if sponsorship_details["id"]
    @animal_id = sponsorship_details["animal_id"]
    @member_id = sponsorship_details["member_id"]
    @value = sponsorship_details["value"]
    @date_sponsored = sponsorship_details["date_sponsored"]
  end

  def save()
    sql = "INSERT INTO sponsorships (animal_id, member_id, value, date_sponsored)
      VALUES ($1, $2, $3, $4) RETURNING id;"
    values = [@animal_id, @member_id, @value, @date_sponsored]
    result = SqlRunner.run( sql, values)
    @id = result[0]["id"].to_i()
  end

  def Sponsorship.all()
    sql = "SELECT * FROM sponsorships;"
    result = SqlRunner.run(sql)
    return Sponsorship.map_items(result)
  end

  def Sponsorship.map_items(sponsorships_hash)
    return sponsorships_hash.map() {|sponsorship| Sponsorship.new(sponsorship)}
  end

  def Sponsorship.delete_all()
    sql = "DELETE FROM sponsorships;"
    SqlRunner.run(sql)
  end

  def Sponsorship.delete_by_id(id)
    sql = "DELETE FROM sponsorships WHERE id = $1;"
    SqlRunner.run(sql, [id])

  end

end
