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
		session[:user_id] = @user.id 
		redirect to "/home"
	end

	get "/thanks" do 
		erb :thanks
	end

	get "/login" do 
		erb :login
	end

	get "/home" do 	
		@user = User.find(session[:user_id]) if session[:user_id]
		@shows = TvShow.all
		erb :index
	end

	get "/new_show" do 	
		erb :new_show
	end

	post "/home" do 
		@show = TvShow.create(title: params["title"], info: params["info"])
		redirect to "/home"
	end

	get "/shows/:id" do 
		id = params["id"]
		@dis_show = TvShow.find(params["id"])
		erb :show

	end

	post '/shows/:id/comments' do
    	Comment.create(comment: params["comment"], user_id: session[:user_id], tv_show_id: params["id"])
    	redirect to "/shows/#{params[:id]}"
 	end

 	post "/shows/:id/links" do 
 		Link.create(link: params["link"], user_id: session[:user_id], tv_show_id: params["id"], subscription: params["subscription"])
 		redirect to "/shows/#{params[:id]}"
 	end

 	post "/shows/:id/ratings" do 
 		Rating.create(rating: params["rating"], tv_show_id: params["id"], user_id: session[:user_id])
 		@avg = Rating.average("rating")
 		redirect to "/shows/#{params[:id]}"
 	end

	end
end