helpers do
  
  def current_user
    User.find_by(id: session[:user_id])
  end

  def logged_in?
    !!current_user
  end

  def redirect_nologin
    redirect '/' unless logged_in?
  end

end