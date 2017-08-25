require("sinatra")
require("sinatra/contrib/all")
require_relative("../models/animal.rb")
require_relative("../models/member.rb")
require_relative("../models/sponsorship.rb")


get "/animals" do
  erb(:"")
end
