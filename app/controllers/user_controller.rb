class UserController < ApplicationController
  
  before_filter :login_required, :only => ['welcome', 'hidden']
  
  def login
    if request.post?
      if session[:user] = User.authenticate(params[:user][:username], params[:user][:password])
        flash[:message] = "Login successful"
        puts 'successful'
        redirect_to :action => 'welcome'
      else
        puts 'failure'
        flash[:warning] = "Login unsuccessful"
      end
    end
  end

  def logout
    session[:user] = nil
    flash[:message] = 'Logged out'
    redirect_to :action => 'login'
  end
  
  def welcome
    puts 'welcome'
  end
  
  def hidden
  end

end
