require_relative("../db/sql_runner.rb")

class Sponsorship

  def initialize(sponsorship_details)
    @id = sponsorship_details["id"] if sponsorship_details["id"]
    @animal_id = sponsorship_details["animal_id"]
    @member_id = sponsorship_details["member_id"]
    @value = sponsorship_details["value"]
    @date = sponsorship_details["date"]
  end



end
