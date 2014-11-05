configure do	
	enable :sessions
end

helpers do
	def login?
	  !!session[:username]
	end

	def username
		session[:username]
	end
end

get '/' do
  if login?
  	@username = session[:username]
  end
  @albums = Album.all
  erb :index
end


