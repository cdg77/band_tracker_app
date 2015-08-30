require("bundler/setup")
Bundler.require(:default)

Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file }

get('/') do
  @bands = Band.all()
  @venues = Venue.all()

  erb(:index)
end

post('/new_band') do
  name = params.fetch('name')
  new_band = Band.new({:name => name, :id => nil})
  new_band.save()

  redirect('/')
end

post('/new_venue') do
  place = params.fetch('place')
  new_venue = Venue.new({:place => place})
  new_venue.save()

  redirect('/')
end

post('/bands') do
  name = params.fetch('name')
  @band = Band.create({:name => name})

  redirect('/')
end

get('/bands/:id') do
  @venues = Venue.all()
  # @websites = Website.all()
  @bands = Band.all()
  @band = Band.find(params.fetch('id').to_i())
  erb(:band)
end

post('/bands/:id') do
  @bands = Band.all()
  @venues = Venue.all()
  @band = Band.find(params.fetch('id').to_i())
  place = params.fetch('place')
  @band.venues.create(:place => place)
  # @websites = Website.all()
  # address = params.fetch('address')
  # @band.websites.create(:address => address)
  redirect("/bands/#{@band.id()}")
  # redirect('/bands/'.concat(@band.id().to_s()))
end

patch('/bands/:id') do
  @bands = Band.all()
  @band = Band.find(params.fetch('id').to_i())
  name =  params.fetch('name')
  @band.update({:name => name})
  redirect("/bands/#{@band.id()}")

end

delete("/bands/:id") do
  @bands = Band.all()
  @band = Band.find(params.fetch('id').to_i())
  @band.destroy()
  redirect('/')
end

delete("/bands/:id/venues/:venue_id") do
  @bands = Band.all()
  @band = Band.find(params.fetch('id').to_i())
  @venues = Venue.all()
  @venue = Venue.find(params.fetch('venue_id').to_i())
  @venue.destroy()
  redirect("/bands/#{@band.id()}")
end

get("/venues/:id") do
@venues = Venue.all()
@venue = Venue.find(params.fetch('id').to_i())
@bands = Band.all()
erb(:venue)
end

post('/venues/:id') do
  @venues = Venue.all()
  @bands = Band.all()
  @venue = Venue.find(params.fetch('id').to_i())
  name = params.fetch('name')
  @venue.bands.create(:name => name)
  redirect("/venues/#{@venue.id()}")
end

delete("/venues/:id/bands/:band_id") do
  @venues = Venue.all()
  @venue = Venue.find(params.fetch('id').to_i())
  @bands = Band.all()
  @band = Band.find(params.fetch('band_id').to_i())
  @band.destroy()
  redirect("/venues/#{@venue.id()}")
end

patch('/venues/:id') do
  @venues =Venue.all()
  @venue =Venue.find(params.fetch('id').to_i())
  place =  params.fetch('place')
  @venue.update({:place => place})
  redirect("/venues/#{@venue.id()}")
end
