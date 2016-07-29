get '/login' do
  erb :'user/login'
end

post '/login' do
  binding.pry
  user = User.find_by({:email => params[:email]})
  if user && user.authenticate(params[:password])
    session[:user_id] = user.id
    redirect '/'
  else
      @errors = ["Email and/or Password incorrect"]
      erb :'user/login'
  end
end

get '/logout' do
  session.clear
  redirect '/'
end

