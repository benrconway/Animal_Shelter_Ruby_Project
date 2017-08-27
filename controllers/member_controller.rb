require("sinatra")
require("sinatra/contrib/all")
require_relative("../models/animal.rb")
require_relative("../models/member.rb")
require_relative("../models/sponsorship.rb")

#Index
get "/members" do
  @members = Member.all()
  erb(:"members/index")
end

#Create
get "/members/new" do
  erb(:"members/new")
end

post "/members" do
  member = Member.new(params)
  member.save()
  redirect to "/members"
end

#Show
get "/members/:id" do
  @member = Member.find(params[:id])
  erb(:"members/show")
end

#Delete
post "/members/:id/delete" do
  Member.delete_by_id(params[:id])
  redirect to "/members"
end

#Edit
get "/members/:id/edit" do
  @member = Member.find(params[:id])
  erb(:"members/edit")
end

post "/members/:id" do
  member = Member.new(params)
  member.update()
  redirect to "/members/#{params[:id]}"
end
