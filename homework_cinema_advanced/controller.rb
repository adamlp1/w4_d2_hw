require('sinatra')
require('sinatra/contrib/all')

require_relative('models/calculator')
also_reload('./models/*')


get '/films/:list' do
  @films = Film.all(params[:list])
  erb(:index)
end
