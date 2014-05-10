class SessionsController < ApplicationController
  
  # create a new sesssion. handles all of the actions for the sessions/new.html.erb
  def new

  end # end of method new

 
  def create
     user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      sign_in user
      redirect_back_or user
    else
      flash.now[:error] = 'Invalid email/password combination'
      render 'new'
    end
  end # end of method create

 def destroy
    sign_out
    redirect_to root_url
  end
 
end # end of SessionsController < ApplicationController
