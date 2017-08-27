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

post "/animals" do
  animal = Animal.new(params)
  animal.save
  redirect to "/animals"
end

#Edit route
get "/animals/:id/edit" do
  @animal = Animal.find(params[:id])
  erb(:"animals/edit")
end

post "/animals/:id" do
  animal = Animal.new(params)
  animal.update()
  redirect to "/animals/#{animal.id}"
end

get "/animals/:id" do
  @animal = Animal.find(params[:id])
  erb(:"animals/show")
end

post "/animals/:id/delete" do
  Animal.delete_by_id(params[:id])
  redirect to "/animals"
end
