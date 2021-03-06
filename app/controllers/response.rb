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



# post '/comments' do
#   redirect_nologin
#   if params[:comment]["body"].empty?
#     @errors = ["Honey Grahams, don't submit empty comments"]
#     @question = Question.find(params[:comment]["question_id"].to_i)
#     erb :'questions/show'
#   else
#     question_id = params[:comment].delete("question_id")
#     comment = current_user.comments.new(params[:comment])
#     if comment.save
#       redirect "/questions/#{question_id}"
#     else
#       @errors = comment.errors.full_messages
#       erb :'questions/show'
#     end
#   end
# end