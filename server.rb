module App
	class Server < Sinatra::Base
	enable :sessions
	set :method_override, true

	get "/" do 
		erb :start_page
	end

	post "/sessions" do 
		user = User.find_by({username: params[:username]}).try(:authenticate, params[:password])
		if user
			session[:user_id] = user.id 
			redirect to "/home"
		else
			redirect to "/login"
		end
	end

	delete "/sessions" do 	
		session[:user_id] = nil
		redirect to "/"
	end

	get "/users/new" do 
		erb :new_user
	end

	post "/users" do 
		@user = User.create(username: params["username"], avatar_img: params["avatar_img"], password: params["password"], password_confirmation: params["password_confirmation"])
		redirect to "/home"
	end

	get "/login" do 
		erb :login
	end

	get "/home" do 	
		@user = User.find(session[:user_id]) if session[:user_id]
		@shows = TvShow.all
		erb :index
	end


	end
end



