get "/albums/:id" do
	@album = Album.find(params[:id])
	@uploads = @album.uploads
	erb :'uploads/album'
end

post '/albums' do
	if login?
  	album = Album.create(name: params[:name], user_id: User.find_by(username: session[:username]).id)
  	redirect "/albums/#{album.id}"
	else
		redirect '/'
  end
end
