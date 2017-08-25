require_relative("../db/sql_runner.rb")


class Member

  attr_accessor(:name)
  attr_reader(:id)

  def initialize(member_details)
    @id = member_details["id"].to_i if member_details["id"]
    @name = member_details["name"]
  end

  def save()
    sql=
  end


end
