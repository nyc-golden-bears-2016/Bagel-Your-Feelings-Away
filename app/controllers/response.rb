post '/response' do 
  @response = Response.new(params[:answer])
  if params[:response]["answer"].empty?
    @errors = ["We can't make you a bagel if you don't tell us how you feel."]
    erb :'home'
  end
  if @response.save
    redirect "/response/#{response.id}"
  else
    @errors = response.errors.full_messages
    erb :'home'
  end
end
