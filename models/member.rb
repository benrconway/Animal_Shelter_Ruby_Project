require_relative("../db/sql_runner.rb")


class Member

  attr_accessor(:name, :picture)
  attr_reader(:id)

  def initialize(member_details)
    @id = member_details["id"].to_i if member_details["id"]
    @name = member_details["name"]
    @picture = member_details["picture"]
  end

  def save()
    sql = "INSERT INTO members (name, picture) VALUES ($1, $2) RETURNING id;"
    result = SqlRunner.run(sql, [@name, @picture])
    @id = result[0]["id"].to_i
  end

  def Member.all()
    sql = "SELECT * FROM members;"
    result = SqlRunner.run(sql)
    return Member.map_items(result)
  end

  def Member.map_items(member_hash)
    return member_hash.map() {|member_info| Member.new(member_info)}
  end

  def Member.delete_all()
    sql = "DELETE FROM members;"
    SqlRunner.run(sql)
  end

  def Member.delete_by_id(id)
    sql = "DELETE FROM members WHERE id = $1;"
    SqlRunner.run(sql, [id])
  end

  def update()
    sql = "UPDATE members SET (name, picture) = ($1, $2) WHERE id = $3;"
    SqlRunner.run(sql, [@name, @picture, @id])
  end

  def Member.find(id)
    sql = "SELECT * FROM members WHERE id = $1;"
    result = SqlRunner.run(sql, [id]).first()
    return Member.new(result)
  end

  def sponsors()
    sql = "SELECT animals.* FROM animals
    INNER JOIN sponsorships ON animals.id = sponsorships.animal_id
    INNER JOIN members ON sponsorships.member_id = members.id
    WHERE members.id = $1;"
    result = SqlRunner.run(sql, [@id])
    return Animal.map_items(result)
  end
end
