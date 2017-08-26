require("sinatra")
require("sinatra/contrib/all")
require_relative("../models/animal.rb")
require_relative("../models/member.rb")
require_relative("../models/sponsorship.rb")

#Index route
get "/animals" do
  @animals = Animal.all()
  erb(:"animals/index")
end

# Create route
get "/animals/new" do
  erb(:"animals/new")
end


get "/animals/:id/edit" do
  @animal = Animal.find(params[:id])
  erb(:"animals/edit")
end

get "/animals/:id" do
  @animal = Animal.find(params[:id])
  erb(:"animals/show")
end
