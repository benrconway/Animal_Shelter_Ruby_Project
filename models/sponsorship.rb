require_relative("../db/sql_runner.rb")


class Sponsorship

  attr_accessor(:animal_id, :member_id, :value, :date_sponsored)
  attr_reader(:id)

  def initialize(sponsorship_details)
    @id = sponsorship_details["id"].to_i if sponsorship_details["id"]
    @animal_id = sponsorship_details["animal_id"].to_i
    @member_id = sponsorship_details["member_id"].to_i
    @value = sponsorship_details["value"].to_i
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

  def update()
    sql = "UPDATE sponsorships SET
    (animal_id, member_id, value, date_sponsored)
     = ($1, $2, $3, $4) WHERE id = $5;"
     values = [@animal_id, @member_id, @value, @date_sponsored, @id]
     SqlRunner.run(sql,values)
   end

   def Sponsorship.find(id)
     sql = "SELECT * FROM sponsorships WHERE id = $1;"
     result = SqlRunner.run(sql, [id])
     return Sponsorship.new(result.first)
   end

   def sponsor()
     sql = "SELECT * FROM members WHERE id = $1;"
     result = SqlRunner.run(sql, [@member_id]).first()
     return Member.new(result)
   end

   def sponsored()
     sql = "SELECT * FROM animals WHERE id = $1;"
     result = SqlRunner.run(sql, [@animal_id]).first()
     return Animal.new(result)
   end

   def Sponsorship.total_value()
     records = Sponsorship.all()
     total_value = 0
     records.each() {|record| total_value += record.value}
     return total_value
   end
end
