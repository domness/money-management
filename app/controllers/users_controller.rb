class UsersController < ApplicationController
  
  before_filter :login_required, :only => ['welcome', 'hidden']

  # GET /users
  # GET /users.xml
  def index
    @users = User.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @users }
    end
  end

  # GET /users/1
  # GET /users/1.xml
  def show
    admin_required
    @user = User.find(params[:id])
    @user_bills = UserBill.where("user_id = ?", params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @user }
    end
  end
  
  # GET /users/new
  # GET /users/new.xml
  def new
    admin_required
    @user = User.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @user }
    end
  end

  # GET /users/1/edit
  def edit
    admin_required
    @user = User.find(params[:id])
  end
  
  # PUT /users/1
  # PUT /users/1.xml
  def update
    admin_required
    @user = User.find(params[:id])

    respond_to do |format|
      if @user.update_attributes(params[:user])
        format.html { redirect_to(@user, :notice => 'User was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @user.errors, :status => :unprocessable_entity }
      end
    end
  end
  
  # DELETE /users/1
  # DELETE /users/1.xml
  def destroy
    admin_required
    @user = User.find(params[:id])
    @user.destroy

    respond_to do |format|
      format.html { redirect_to(users_url) }
      format.xml  { head :ok }
    end
  end
  
  def login
    if session[:user]
      redirect_to(users_welcome_path)
    end
    if request.post?
      if session[:user] = User.authenticate(params[:user][:username], params[:user][:password])
        flash[:message] = "Login successful"
        redirect_to(users_welcome_path, :notice => "Login Successful")
      else
        redirect_to(users_login_path, :notice => "Login unsuccessful")
      end
    end
  end

  def logout
    session[:user] = nil
    flash[:message] = 'Logged out'
    redirect_to :action => 'login'
  end
  
  def welcome
    @user = User.find(current_user)
    @user_bills = UserBill.where("user_id = ?", @user)
  end

  def hidden
  end

end
