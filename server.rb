module App
	class Server < Sinatra::Base
	enable :sessions
	set :method_override, true



	get "/" do 	
		@shows = TvShow.all
		erb :index
	end

	get "/users/new" do 
		erb :new_user
	end

	post "/users" do 
		User.create(username: params["username"], avatar_img: params["avatar_img"])
		redirect to "/"
	end

	end
end