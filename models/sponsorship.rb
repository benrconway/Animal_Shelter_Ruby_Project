require_relative("../db/sql_runner.rb")

class Sponsorship

  def initialize(sponsorship_details)
    @id = sponsorship_details["id"] if sponsorship_details["id"]
    @animal_id = sponsorship_details["animal_id"]
    @member_id = sponsorship_details["member_id"]
    @value = sponsorship_details["value"]
    @date = sponsorship_details["date"]
  end

  def save()
    sql = "INSERT INTO sponsorships (animal_id, member_id, value, date)
      VALUES ($1, $2, $3, $4) RETURNING id;"
    values = [@animal_id, @member_id, @value, @date]
    result = SqlRunner.run( sql, values)
    @id = result[0]["id"].to_i()
  end

  def Sponsorship.all()
    sql = "SELECT * FROM sponsorships;"
    result = SqlRunner.run(sql)
    return Sponsorship.map_items(result)
  end

  def Sponsorship.map_items(sponsorships_hash)
    return info_hash.map() {|sponsorship| Sponsorship.new(sponsorship)}
  end

end
