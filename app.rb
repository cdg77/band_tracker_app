require("bundler/setup")
Bundler.require(:default)

Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file }

get('/') do
  @bands = Band.all()

  erb(:index)
end

post('/new_band') do
  name = params.fetch('name')
  new_band = Band.new({:name => name, :id => nil})
  new_band.save()

  redirect('/')
end
