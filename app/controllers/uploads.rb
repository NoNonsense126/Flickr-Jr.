post '/uploads' do
  upload = Upload.new
  upload.album_id = params[:album_id]
  upload.file_name = params[:image]
  upload.save
  redirect to("/albums/#{params[:album_id]}")
end

get '/albums/*/photos/:id' do
	@upload = Upload.find(params[:id])
	erb :'uploads/picture'
end