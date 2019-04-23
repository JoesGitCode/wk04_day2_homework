require('sinatra')
require('sinatra/contrib/all')
require_relative('models/rps.rb')
also_reload('.models/*')

get '/rps/:hand1/:hand2' do
  hand1 = params[:hand1]
  hand2 = params[:hand2]
  @gameresult = RPSGame.check_win(hand1, hand2)
  erb(:result)
end

get '/' do
  erb(:homepage)
end
