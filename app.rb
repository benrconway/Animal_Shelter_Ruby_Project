require("sinatra")
require("sinatra/contrib/all")
require_relative("./controllers/animal_controller.rb")
require_relative("./controllers/member_controller.rb")
require_relative("./controllers/sponsorship_controller.rb")

get "/" do
  erb(:index)
end
