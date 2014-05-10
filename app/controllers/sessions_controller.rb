class SessionsController < ApplicationController
  
  # create a new sesssion. handles all of the actions for the sessions/new.html.erb
  def new

  end # end of method new

 
  def create
     user = User.find_by( email: params[ :session ][ :email ].downcase )
       if user && user.authenticate( params[ :session ][ :password ] )
         
      # Sign the user in and redirect to the user's show page.
         sign_in user
         redirect_to user
      else
         # Create an error message and re-render the signin form.
         
         # flash.now, which is specifically designed for displaying flash messages on rendered pages
         flash.now[:error] = 'Invalid email/password combination'
         render 'new'
      end
  end # end of method create

 def destroy
    sign_out
    redirect_to root_url
  end
 
end # end of SessionsController < ApplicationController
