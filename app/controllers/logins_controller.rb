class LoginsController < ApplicationController
  # GET /logins
  # GET /logins.xml
  def index
    @logins = Login.all
  end

  # GET /logins/1
  # GET /logins/1.xml
  def show
    @login = Login.find(params[:id])
  end

  # GET /logins/new
  # GET /logins/new.xml
  def new
    @login = Login.new
  end

  # GET /logins/1/edit
  def edit
    @login = Login.find(params[:id])
  end

  # POST /logins
  # POST /logins.xml
  def create
    @login = Login.new(params[:login])
    if @login.save
      redirect_to(@login, :notice => 'Login was successfully created.')
    else
      render :action => "new"
    end
  end

  # PUT /logins/1
  # PUT /logins/1.xml
  def update
    @login = Login.find(params[:id])
    if @login.update_attributes(params[:login])
      redirect_to(@login, :notice => 'Login was successfully updated.')
    else
      render :action => "edit"
    end
  end

  # DELETE /logins/1
  # DELETE /logins/1.xml
  def destroy
    @login = Login.find(params[:id])
    @login.destroy
    redirect_to(logins_url)
  end
end
