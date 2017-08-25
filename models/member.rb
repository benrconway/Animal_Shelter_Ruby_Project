require_relative("../db/sql_runner.rb")


class Member

  attr_accessor(:name)
  attr_reader(:id)

  def initialize(member_details)
    @id = member_details["id"].to_i if member_details["id"]
    @name = member_details["name"]
  end

  def save()
    sql = "INSERT INTO members (name) VALUES ($1) RETURNING id;"
    result = SqlRunner.run(sql, [@name])
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


end
