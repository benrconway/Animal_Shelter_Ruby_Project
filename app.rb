require("sinatra")
require("sinatra/contrib/all")
require_relative("./controllers/animal_controller.rb")
require_relative("./controllers/member_controller.rb")
require_relative("./controllers/sponsorship_controller.rb")
also_reload("./models/*")

get "/" do
  erb(:index)
end

get "/forget_it" do
  erb(:all_over)
end
