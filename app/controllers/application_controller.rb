require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

  get "/" do 
    erb :team 
  end
  
  post "/teams" do 
   @team = Team.new(params[:team])
   params[:team][:super_heros].each do |hero|
      SuperHero.new(hero)
     end
    @heros = SuperHero.all
    erb :super_hero
  end

end
