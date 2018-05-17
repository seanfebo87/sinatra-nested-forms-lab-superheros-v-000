require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

  get "/" do 
    erb :team 
  end
  
  post "/teams" do 
   @team = Team.new(params[:team])
+   params[:team][:].each do |ship|
+      Ship.new(ship)
+     end
+    @ships = Ship.all
    erb :super_hero
  end

end
