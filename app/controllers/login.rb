get '/login' do
  erb :'/user/login'
end

post '/login' do
   user = User.find_by({:username => params[:username]})
   if user && user.authenticate(params[:password])
    session[:user_id] = user.id
    redirect '/'
  else
      @errors = ["Email and/or Password incorrect"]
      erb :'users/login'
    end
end

get '/logout' do
  session.clear
  redirect '/'
end

