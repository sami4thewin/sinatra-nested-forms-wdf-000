require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here

    get '/' do
      erb :index
    end

    get '/new' do
      erb :new
    end

    post '/pirates' do
      # binding.pry
      ayo = params[:pirate][:ships]
      # puts ayo
      ayo.each do |son|
        Ship.new(son)
      end
      @ships = Ship.all
      @ship_1 = @ships[0]
      @ship_2 = @ships[1]

      #
      @pirate = Pirate.new(params[:pirate])
      erb :pirates

    end




  end
end
