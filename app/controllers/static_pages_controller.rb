class StaticPagesController < ApplicationController

  # performs all of the behind the scenes functions for the home.erb.html file
  def home
         @micropost = current_user.microposts.build if signed_in?
  end
  
  # performs all of the behind the scenes functions for the help.erb.html file
  def help
  end

  def contact
  end
end
