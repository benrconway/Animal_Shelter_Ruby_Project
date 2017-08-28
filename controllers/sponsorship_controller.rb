require("sinatra")
require("sinatra/contrib/all")
require_relative("../models/animal.rb")
require_relative("../models/member.rb")
require_relative("../models/sponsorship.rb")

#Index
get "/sponsorships" do
  @sponsorships = Sponsorship.all()
  erb(:"sponsorships/index")
end



#edit
get "/sponsorships/:id/edit" do
  @animals = Animal.all()
  @members = Member.all()
  @sponsorship = Sponsorship.find(params[:id])
  erb(:"sponsorships/edit")
end

post "/sponsorships/:id" do
  record = Sponsorship.new(params)
  record.update()
  redirect to "/sponsorships/#{record.id}"
end
#new
get "/sponsorships/new" do
  @animals = Animal.all()
  @members = Member.all()
  erb(:"sponsorships/new")
end

post "/sponsorships" do
  record = Sponsorship.new(params)
  record.save()
  redirect to "/sponsorships"
end

#delete
post "/sponsorships/:id/delete" do
  Sponsorship.delete_by_id(params[:id])
  redirect to "/sponsorships"
end

#Show
get "/sponsorships/:id" do
  @record = Sponsorship.find(params[:id])
  erb(:"sponsorships/show")
end
