class ApplicationController < ActionController::Base
  protect_from_forgery
  
  def login_required
    if session[:user]
      return true
    end
    flash[:warning] = 'Please login to continue'
    session[:return_to] = request.fullpath
    redirect_to :controller => "users", :action => "login"
    return false
  end
  
  def admin_required
    if session[:user] && session[:user][:admin]
      return true
    end
    redirect_to :controller => "users", :action => "welcome"
    return false
  end
  
  def current_user
    session[:user]
  end
  
  def redirect_to_stored
    if return_to = session[:return_to]
      session[:return_to] = nil
      redirect_to_url(return_to)
    else
      redirect_to :controller => "users", :action => "welcome"
    end
  end
end
