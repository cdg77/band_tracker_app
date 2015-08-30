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
